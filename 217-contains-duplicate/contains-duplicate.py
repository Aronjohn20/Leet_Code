class Solution(object):
    def containsDuplicate(self, nums):
        seen = set()
        for ch in nums:
            if ch not in seen:
                seen.add(ch)
            else:
                return True
        
        return False
            

        