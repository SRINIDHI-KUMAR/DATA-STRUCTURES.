Adding and deleting an element in a position in a doubly linked list. Printing of elements
#include<iostream>
using namespace std;
class  Node{
public:
int data;
Node *next;
Node *prev; };
void insertdata(Node **head,int data) {
    Node *n=new Node();
    n->data=data;
    n->next=*head;
    n->prev=NULL;
    *head=n; }
void print(Node *head) {
     Node * temp=head;
    while(temp!=NULL) {
        cout<<temp->data<<" ";
        temp=temp->next;}
    cout<<endl; }
void insertnode(Node *head,int key,int data){
Node *temp=head;
while(temp!=NULL && temp->data!=key) {
        temp=temp->next; }
    if(temp==NULL){
        cout<<"key not found"; }
    Node *newNode=new Node();
    newNode->data=data;
    newNode->next=temp->next;
    newNode->prev=temp;
    if(temp->next!=NULL){
        temp->next->prev=newNode; }
    temp->next=newNode; }
void deletenode(Node* head,int key){
Node *temp=head;
while(temp!=NULL &&temp->data!=key){
      temp=temp->next; }
      if(temp==NULL){
        cout<<"key not found"; }
    Node*newnode=temp->next;
    temp->next=newnode->next;
    newnode->prev=temp;
    delete newnode; }
int main()  
{ 
    Node *head=NULL;
    insertdata(&head,10);
    insertdata(&head,8);
    insertdata(&head,7);
    insertdata(&head,5);
    insertdata(&head,4);
    insertdata(&head,3);
    print(head);
    insertnode(head,7,6);
    cout<<"after insertion at a specific position:"<<endl;
    print(head);
    deletenode(head,5);
    cout<<"after deletion at a specific position:"<<endl;
    print(head);
    return 0; 
}
