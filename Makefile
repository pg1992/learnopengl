bin/main.elf: src/main.cpp
	g++ -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl -Iinclude src/glad.c src/main.cpp -o bin/main.elf
