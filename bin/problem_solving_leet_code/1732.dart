class Solution {
  static int largestAltitude(List<int> gain) {
    int sum = 0;
    int max = 0;
    for (int i = 0; i < gain.length; i++) {
      sum = sum + gain[i];
      sum > max ? max = sum : null;
    }
    return max;
  }
}
