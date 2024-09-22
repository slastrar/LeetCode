class Solution:
    def threeConsecutiveOdds(self, arr: List[int]) -> bool:
        for i in range(len(arr)):
            if i > len(arr)-3:
                return False

            if arr[i]%2 ==1:
                if arr[i+1]%2 ==1:
                    if arr[i+2]%2 ==1:
                        return True