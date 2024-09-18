def repeatedSubstringPattern(s):
    """
    :type s: str
    :rtype: bool
    """

    if len(s) <= 1:
        return False
    else:
        x = 0
        for i in range(len(s)):
            if s.count(s[i]) == 1:
                break
            else:
                n = s.find(s[i], x + 1)
                word = s[i:n]
                if word == s[(i + n) * 2] and len(s) % len(word) == 0:
                    return True
                else:

        return False

        # for i in s:
        #     if s.count(i) == 1:
        #         return False
        #     else:
        #         l = len(s[i:s.find(i, 1 , len(s)+1)])
