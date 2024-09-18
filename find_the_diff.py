def findTheDifference(self, s, t):
    i = 0
    while i < len(s):
        l = s[i]
        first_index = t.find(l)
        t = t[:first_index] + t[first_index + 1:]
        i += 1
    return t


findTheDifference("abcd", "dc4ba")
