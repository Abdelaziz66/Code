class Solution {
  static List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  List<bool>result=[];
  int max=0;
  for(int i=0;i<candies.length;i++){
    if(candies[i]>max){
      max=candies[i];
    }
  }
  for(int i=0;i<candies.length;i++){
    int sum =extraCandies+candies[i];
    if(max>sum){
      result.add(false);
    }else{
      result.add(true);

    }
  }
  
  return result;
  }
}
