class Solution(object):
    def isAnagram(self, s, t):
        j = {}
        k = {}
        for a in s:
            j[a] = j.get(a,0) + 1

        for a in t:
            k[a] = k.get(a,0) + 1

        if j==k:
            return True
        else:
            return False
        