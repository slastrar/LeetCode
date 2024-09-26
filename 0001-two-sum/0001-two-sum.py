class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(len(nums)):
            j=i
            while j < len(nums)-1:
                j+=1
                if nums[i] + nums[j] == target:
                    return [i,j]
                
                