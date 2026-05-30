class Solution {
    public int[] searchRange(int[] nums, int target) {
    int res[] = new int[2];
    int res1 = BSearch(nums,target,true);
    int res2 = BSearch(nums,target,false);
    res[0] = res1;
    res[1] = res2;
    return res;
    }
    public int BSearch(int [] nums,int t,Boolean Istrue){
        int start = 0;
        int end = nums.length-1;
        int ans = -1;
        while(start<=end){
        int mid = start + (end -start)/2;
        if(nums[mid]==t){
            ans = mid;
            if(Istrue){
                end = mid - 1;
            }
            else{
                start = mid+1;
            }
        }
        else if(nums[mid]<t){
            start = mid+1;
        }
        else{
            end = mid - 1;
        }
        }
        return ans;
    }

}