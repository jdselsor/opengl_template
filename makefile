# Compile Targets
#	Debug Builds
#		- 64-bit debug windows build x
#		- 32-bit debug windows build
#	Release Builds
#		- 64-bit release windows build x
#		- 32-bit release windows build

# Basic Compile Command 
#	gcc src/*.c -o main -g -I./include -L./lib -lglfw3dll

debug_64:
	gcc ./src/*.c -o main_d.exe  -Wall -Wno-missing-braces -Wunused-result -g -I./include/ -L./lib/ -lglfw3dll

release:
	gcc ./src/*.c -o main.exe -O3 -Wall -Wno-missing-braces -Wunused-result -I./include/ -L./lib/ -lglfw3dll

default: debug

clean:
	rm -f *.exe