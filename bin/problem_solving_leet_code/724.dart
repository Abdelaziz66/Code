class Solution {
  static int pivotIndex(List<int> nums) {
    int totalSum = 0;
    int sumLeft = 0;

    for (int value in nums) {
      totalSum += value;
    }
    for (int i = 0; i < nums.length; sumLeft += nums[i++]) {
      if (sumLeft * 2 == totalSum - nums[i]) {
        return i;
      }
    }
    return -1;
  }
}
