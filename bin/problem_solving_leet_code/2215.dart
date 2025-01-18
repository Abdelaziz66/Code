class Solution {
  static List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();

    List<int> distinctNums1 = set1.difference(set2).toList();
    List<int> distinctNums2 = set2.difference(set1).toList();

    return [distinctNums1, distinctNums2];
  }
}
