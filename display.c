//prints out all values that user entered and asks if they are correct
//only contains a function?
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

extern "C" void display(int arr[], int size);

void display(int arr[], int size){

	//print initial statement
	printf("%s", "The Numbers you entered are: ");

	//loop through array to print each element out
	for(int i = 0; i < size; ++i){
		printf("%d ",arr[i]);
	}

	//ask if the numbers are in the correct order
	printf("%s", "\nIs this correct? (y or n)");


} //end of display function
