#Author: Ethan Kamus
#email: ethanjpkamus@csu.fullerton.edu

rm *.o
rm *.out
rm *.lis



echo "Compile main.c"
gcc -c -Wall -m64 -std=c11 -o main.o -fno-pie -no-pie main.c

echo "Assemble control.asm"
nasm -f elf64 -l control.lis -o control.o control.asm

echo "Compile fill.cpp"
g++ -c -Wall -m64 -std=c++14 -o fill.o -fno-pie -no-pie fill.cpp

echo "Compile display.c"
gcc -c -Wall -m64 -std=c11 -o display.o -fno-pie -no-pie display.c

echo "Assemble sum.asm"
nasm -f elf64 -l sum.lis -o sum.o sum.asm

echo "Link all object files"
g++ -m64 -std=c++14 -fno-pie -no-pie main.o control.o fill.o display.o sum.o -o myprog.out

echo "Now the program will run"
./myprog.out
