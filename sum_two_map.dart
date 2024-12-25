sumTwoNumbers(List<int> nums, int target) {
  Map<int, int> solutions = {};
  for (int i = 0; i < nums.length; i++) {
    int answer = target - nums[i];
    if (solutions.containsKey(answer)) {
      return [solutions[answer], i];
    } else {
      solutions[nums[i]] = i;
    }
  }
  return [];
}
