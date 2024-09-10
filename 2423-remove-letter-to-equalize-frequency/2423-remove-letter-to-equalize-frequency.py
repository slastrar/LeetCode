class Solution:
    def equalFrequency(self, word: str) -> bool:
        for i in range(len(word)):
            S = word[:i] + word[i + 1:]
            q_letter = []
            for letter in list(S):
                q_letter.append(S.count(letter))
            if len(set(q_letter)) == 1:
                return True
        return False