class Solution {
    public int totalHammingDistance(int[] nums) {
       int total = 0;
       int bit;
       for(bit = 0;bit<32;bit++){
        int ones = 0;
        for(int num : nums){
            if((num & (1<<bit))!=0){
                ones++;
            }}
        int zeroes = nums.length - ones;
        total += zeroes * ones;
        
       }
       return total;
}}