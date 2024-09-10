class Solution:
    def finalValueAfterOperations(self, operations: List[str]) -> int:
        value = 0
        for o in operations:
            if o[1] == "+":
                value+=1
            else:
                value-=1
        return value