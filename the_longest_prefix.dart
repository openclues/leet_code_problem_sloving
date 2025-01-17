// Write a function to find the longest common prefix string amongst an array of strings.

// If there is no common prefix, return an empty string "".

// Example 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Example 2:

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.

class Solution {
  String? longestCommonPrefix(List<String> strs) {
    strs.sort((a, b) => a.length.compareTo(b.length));
    String? common = '';
    for (int i = 0; i < strs.first.length; i++) {
      for (int j = 0; j < strs.length; j++) {}
    }
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  solution.longestCommonPrefix(["flower", "flow", "flight"]);
}
