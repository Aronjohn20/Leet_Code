class Solution(object):
    def minSubArrayLen(self, target, nums):
        left = 0 
        right = 0
        x = float('inf')
        # r = []
        total=0
        while right < len(nums):
            total+=nums[right]
            while total >=target:
                x = min(x,right-left+1)
                # r.pop(left)
                total-=nums[left]
                left+=1
            # r.append(nums[right])
            right+=1
        
        # while sum(r[left:right]) >=target:
        #         x = min(x,right-left)
        #         # r.pop(left)
        #         left+=1
        if x==float('inf'):
            return 0
        else:
            return x

        
        