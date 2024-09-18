def strStr(haystack, needle):
    len_n = len(needle)
    i = 0
    while i < len(haystack):
        if haystack[i:len_n] == needle:
            return i
        else:
            i += 1
            len_n += 1

    return -1



strStr("hello", "ll")

#         if len(words) == 2:
#             return index
#         if index is None:
#             index = i
#
#         i += 1
#
# if len(words) >= 1:
#     print(index)
#     return index
# else:
#     print("-1")
#     return -1
