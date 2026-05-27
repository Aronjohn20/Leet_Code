class Solution {
    public int smallestNumber(int n) {
    while(true){
        if((n & n-1)==0){
            break;
        }
        else{
            n = n & n-1;
        }
    }
    n = (n<<1) -1;
    return n;
    }
}