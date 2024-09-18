def isAnagram(s, t):
            if len(s) != len(t):
                return False
            sets = set(s)
            for x in sets:
                if s.count(x) != t.count(x):
                    return False
            return True


isAnagram("aa","a")