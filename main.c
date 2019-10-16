//author: Ethan Joseph Pernia Kamus
//email: ethanjpkamus@csu.fullerton.edu

//tells user what the program is about, calls control

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

extern long control();

int main(int argc, char * argv[]){
       long pass = 0;

       //cout << "This Assignment 2 was Programmed by Ethan Kamus\n";
       printf("%s\n", "This is assignment 4 was Programmed by Ethan Kamus");

       pass = control();

       printf("%s", "The main driver received the sum of the array: ");
       printf("%ld\n", pass);
       printf("%s\n", "The main will now return 0. Bye.");

       return 0;
}
