class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        if n == 0 or flowerbed == [0]: return True
        
        if flowerbed == [1]: return False

        for i in range(len(flowerbed)):
            if flowerbed[i] == 1:
                continue

            else:
                if i == 0: 
                    if flowerbed[i+1] == 0:
                        flowerbed[i] = 1
                        n -= 1
                elif i == len(flowerbed) - 1:
                    if flowerbed[i-1] == 0:
                        flowerbed[i] = 1
                        n -= 1
                else:
                    if (flowerbed[i+1] == 0) and (flowerbed[i-1] == 0):
                        flowerbed[i] = 1
                        n -= 1
        
        return True if n <= 0 else False
                