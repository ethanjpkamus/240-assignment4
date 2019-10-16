#Author: Ethan Kamus
#email: ethanjpkamus@csu.fullerton.edu

rm *.o
rm *.out
rm *.lis



echo "Compile main.c"
gcc -c -Wall -m64 -std=c11 -o main.o -fno-pie -no-pie main.c

echo "Compile fill.cpp"
g++ -c -Wall -m64 -std=c++14 -o fill.o -fno-pie -no-pie fill.cpp

echo "Assemble control.asm"
nasm -f elf64 -l control.lis -o control.o control.asm

echo "Link all object files"
g++ -m64 -std=c++14 -fno-pie -no-pie control.o main.o fill.o -o myprog.out

echo "Now the program will run"
./myprog.out
