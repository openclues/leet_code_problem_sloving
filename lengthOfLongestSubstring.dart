// ignore_for_file: public_member_api_docs, sort_constructors_first

int lengthOfLongestSubstring(String s) {
  Set<String> charSet = {};
  int maxLength = 0;
  int start = 0;

  for (int end = 0; end < s.length; end++) {
    while (charSet.contains(s[end])) {
      charSet.remove(s[start]);
      start++;
    }
    charSet.add(s[end]);
    maxLength = max(maxLength, end - start + 1);
  }
  return maxLength;
}

int max(int a, int b) => a > b ? a : b;

void main(List<String> args) {
  lengthOfLongestSubstring("a");
}
