class Solution {
  static double findMaxAverage(List<int> nums, int k) {
    double maxAVG = 0;
    for (int i = 0; i < k; i++) {
      maxAVG += nums[i];
    }
    double max = maxAVG;

    for (int j = k; j < nums.length; j++) {
        max = max - nums[j - k] + nums[j];
        if(max>maxAVG){
          maxAVG=max;
        }
    }
    return maxAVG / k;
  }
}
