all: bin/00-triangle.elf

bin/00-triangle.elf: src/00-triangle.cpp
	g++ -ggdb3 -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl -Iinclude src/gl.c src/00-triangle.cpp -o bin/00-triangle.elf

.PHONY: clean all
clean:
	rm -fv bin/*.elf
