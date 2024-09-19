class Solution:
    def findLatestTime(self, s: str) -> str:
        s = list(s)

        for i in range(len(s)):
            if s[i] == "?":
                if i == 0:
                    s[i] = "1" if s[i+1] == "?" or int(s[i+1]) < 2 else "0"
                elif i == 1:
                    s[i] = "9" if s[i-1] == "0" else "1"
                elif i == 3:
                    s[i] = "5"
                else:
                    s[i] = "9"
                    
        return ''.join(s)