class Solution {
 static   bool increasingTriplet(List<int> nums) {
   int first = 9223372036854775807;  // Equivalent to max 64-bit integer
   int second = 9223372036854775807;

   for (int num in nums) {
     if (num <= first) {
       first = num;
       print("first = $first");
     } else if (num <= second) {
       second = num; // Update second if num is larger than first but smaller than second
       print("second = $second");

     } else {
       return true; // Found a triplet
     }
   }

   return false; // No triplet found
 }
}
