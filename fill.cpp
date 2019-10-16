//get user input and pass to control

#include <iostream>

using namespace std;

int fill(int *arr[], int size){

	int count = 0;

	cout << "Input 20 integers please :)" << endl;

	for(int i = 0; i < size; ++i){

		if(count == size){
			break;
		}
		cin >> arr[i];
		count++;
	}
	return count;

}
