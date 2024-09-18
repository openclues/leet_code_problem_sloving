// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

twoSum(List<int> nums, target) {
  nums.sort((a, b) => a.compareTo(b));
  int middleIndex = nums.length ~/ 2;
  if (target < nums[middleIndex]) {
    for (int i = 0; i < middleIndex; i++) {
      for (int j = i + 1; j < middleIndex; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
  }
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  print(twoSum(nums, target));
}
