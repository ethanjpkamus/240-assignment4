//get user input and pass to control

#include <iostream>

using namespace std;

extern "C" int fill(int * arr[], int size);

int fill(int * arr[], int size){

	int count = 0;
	int temp = 0;

	cout << "Input the integers you want. Enter cntl+D when you are done" << endl;


	while(getline(cin,temp)){

		if(count == size){
			cout << "You have reached the maximum amount of integers (10)" << endl;
			break;
		}

		arr[count] = temp;
		count++;
	}
	return count;

}
