class Solution:
    def minimumOperations(self, nums: List[int]) -> int:
        quantity = 0
        for n in nums:
            if n%3:
                quantity += 1

        return quantity