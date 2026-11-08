class Solution(object):
    def removeDuplicates(self, nums):
        i=0
        j=1
        z = []
        l = 0
        s = len(nums)
        while(j<len(nums)):
            if nums[i]==nums[j]:
                nums.pop(j)
                s=s-1
            elif nums[i]!=nums[j]:
                i=i+1
                j=j+1

        return len(nums)

            
                
        

        
        