void main() {
  // List of numbers as strings
  List<String> numbers = ['9', '91', '97', '5', '50'];

  // Function to find the largest concatenated number using greedy approach
  String maximizeSalary(List<String> nums) {
    String result = '';

    while (nums.isNotEmpty) {
      String maxNum = nums[0];
      int maxIndex = 0;

      // Find the best number to concatenate next (greedy choice)
      for (int i = 1; i < nums.length; i++) {
        if ((nums[i] + maxNum).compareTo(maxNum + nums[i]) > 0) {
          maxNum = nums[i];
          maxIndex = i;
        }
      }

      // Add the chosen number to the result and remove it from the list
      result += maxNum;
      nums.removeAt(maxIndex);
    }

    // Handle the edge case of leading zeroes (if the result is all zeroes)
    if (result[0] == '0') {
      return '0';
    }

    return result;
  }

  // Calculate and print the result
  String result = maximizeSalary(numbers);
  print('Maximized salary number: $result');
}
