class Solution {
 static List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;
    List<int> answer = List.filled(n, 1);
    int leftProduct = 1;
    for (int i = 0; i < n; i++) {
      answer[i] = leftProduct;
      print(answer);
      leftProduct *= nums[i];
      print(leftProduct);

    }
    print('-------------------------------------');

    // Calculate the right products and update answer array
    int rightProduct = 1;
    for (int i = n - 1; i >= 0; i--) {
      answer[i] *= rightProduct;
      print(answer);
      rightProduct *= nums[i];
      print(rightProduct);

    }

    return answer;
  }}

