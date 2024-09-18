def mergeAlternately(word1, word2):
        merged_string = ""
        l1 = len(word1)
        l2 = len(word2)

        i1 =0
        i2=0

        while i1 < l1 or i2<l2:
            if i1 <l1:
                merged_string +=word1[i1]
                i1 +=1

            if i2 < l2:
                merged_string +=word2[i2]
                i2 +=1

        
        return merged_string
        

mergeAlternately("islam", "ahmedttt")