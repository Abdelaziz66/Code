class Solution {
  static void moveZeroes(List<int> nums) {
    int snowBallSize = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        snowBallSize++;
      } else if (snowBallSize > 0) {
        int t = nums[i];
        nums[i] = 0;
        nums[i - snowBallSize] = t;
      }
    }
    print(nums);
  }
}
