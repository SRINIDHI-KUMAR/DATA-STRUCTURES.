	C++ Program to count the number of unique elements in an array of n elements
 #include<iostream>
using namespace std;
int main() {
    int arr[10],n;
    cout<<"Enter the no of elements of the array:";
    cin>>n;
    cout<<"Enter the elements of the array:";
    for(int i=0;i<n;i++)
        cin>>arr[i]; }
    int unique_count=1;
    for(int i=1;i<n;i++)
    {
        int j=0;
        for(j=0;j<i;j++)
            if(arr[i]==arr[j])
               break;
        if(i==j)
            unique_count++; }
    cout<<"The no of unique elements in the array:"<<unique_count;
    return 0;
}
