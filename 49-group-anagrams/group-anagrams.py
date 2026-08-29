class Solution(object):
    def groupAnagrams(self, strs):
        anagrams = {}
        for text in strs:
            new = "".join(sorted(text))
            if new not in anagrams:
                anagrams[new] = []

            anagrams[new].append(text)

        return anagrams.values()