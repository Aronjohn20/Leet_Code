class Solution {
    public int[] searchRange(int[] nums, int target) {
    int res[] = new int[2];
    int a = BinarySearch(nums,target,true);
    int b = BinarySearch(nums,target,false);
    res[0] = a;
    res[1] = b;
    return res;   
    }
   public int BinarySearch(int arr[],int target,boolean istrue){
    int ans = -1;
    int low = 0;
    int high = arr.length - 1;
    while(low<=high){
        int mid = low + (high-low)/2;
        if(arr[mid]==target){
            ans = mid;
            if(istrue){
                high = mid - 1;
            }
            else{
                low = mid + 1;
            }
        }
        else if(arr[mid]<target){
            low = mid + 1;
        }
        else{
            high = mid - 1;
        }
    }
 return ans;
   }} 
