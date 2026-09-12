class Solution(object):
    def firstUniqChar(self, s):
        d = {}
        for ch in s:
            d[ch] = d.get(ch,0) + 1

        for i in range(len(s)):
            if d[s[i]] == 1:
                return i

        return -1
        