class Solution {
    public int peakIndexInMountainArray(int[] arr) {
    int n = arr.length;
    int index = 0;
    while(index<n-1){
        if(arr[index]<arr[index+1]){
            index++;
        }
        else{break;}
    }
    int newt=0;
 if(arr[index]>arr[index+1]){
    newt = index;
 }
 return newt;  
}}