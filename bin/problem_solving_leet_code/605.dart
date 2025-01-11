class Solution {
 static bool canPlaceFlowers(List<int> flowerbed, int n) {

  for(int i =0;i<flowerbed.length;i++){
    if(n==0){
      return true;
    }
    if(i==0){
      if(flowerbed.length==1&&flowerbed[i]==0){
          flowerbed[i]=1;
          n=n-1;
          i++;
      }
     else if(flowerbed[i]==0&&flowerbed[i+1]==0){
          flowerbed[i]=1;
          n=n-1;
          i++;

      }
    }else if(i==flowerbed.length-1){
      if(flowerbed[i]==0&&flowerbed[i-1]==0){
        flowerbed[i]=1;
        n=n-1;
        i++;

      }
    }else{
      if(flowerbed[i]==0&&flowerbed[i-1]==0&&flowerbed[i+1]==0){
        flowerbed[i]=1;
        n=n-1;
        i++;

      }
    }
  }
  if(n==0){
    return true;
  }else{
  return false;
  }


  }
}