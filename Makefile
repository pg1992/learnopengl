bin/main.elf: src/main.cpp
	g++ -ggdb3 -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl -Iinclude src/gl.c src/main.cpp -o bin/main.elf

.PHONY: clean
clean:
	rm bin/main.elf
