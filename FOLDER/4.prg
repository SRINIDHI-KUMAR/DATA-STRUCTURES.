4.	Given an array arr[] of length N, the task is to find the length of the longest subarray which consists of consecutive numbers 
in increasing order, from the array.
#include<iostream>
using namespace std;
int main(){
    int A[10],n;
    cout<<"Enter the no of elements of the array:";
    cin>>n;
    cout<<"Enter the elements of the array:";
    for(int i=0;i<n;i++) {
        cin>>A[i];  }
    int maxi = 0;
    for (int i = 0; i < n - 1; i++) {
        int cnt = 1, j;
        for (j = i; j < n - 1; j++) {
            if (A[j + 1] == A[j] + 1)  {
                cnt++; }
            else {
                break; } }
        maxi = max(maxi, cnt);
        i = j; }
    cout << "Length of longest contiguous subarray with consecutive integers:" << maxi;
    return 0; }
