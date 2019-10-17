//get user input and pass to control

#include <iostream>

using namespace std;

extern "C" int fill(int arr[], int size);

int fill(int arr[], int size){

	int count = 0;

	cout << "Input 20 integers please :)" << endl;

	for(int i = 0; i < size; ++i){

		int temp;
		cin >> temp;

		if(temp == 'd' || temp == 'D'){
			cout << "Control + D detected" << endl;
			break;
		}
		if(count == size){
			cout << "You reached the maximum number of integers" << endl;
			break;
		}
		arr[i] = temp;
		count++;
	}
	return count;

}
