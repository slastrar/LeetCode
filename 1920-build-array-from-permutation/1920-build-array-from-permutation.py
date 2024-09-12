class Solution:
    def buildArray(self, nums: List[int]) -> List[int]:
        nums_i = nums.copy()
        for i in range(len(nums)):
            nums_i[i] = nums[nums[i]]
        return nums_i