class Solution {
    public char nextGreatestLetter(char[] letters, char target) { 
    char res = BinarySearch2(letters,target);
    return res;

    }
       public static char BinarySearch2(char arr[],char target){
        int start = 0;
        int end = arr.length-1;
        char ans = '$';
        while(start<=end){
            int mid = start + (end-start)/2;
            if(arr[mid]>target){
                end = mid-1;
                ans=arr[mid];
            }
            else{
                start = mid+1;
            }
        }
        if(ans=='$'){return arr[0];}
        else{
            return ans;
        }

    }
}