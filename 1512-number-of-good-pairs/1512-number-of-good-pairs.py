class Solution:
    def numIdenticalPairs(self, nums: List[int]) -> int:
        n=0
        k = 0
        for i in nums[:-1]:
            for j in nums[k+1:]:
                if i == j:
                    n += 1
            k+=1
        return n