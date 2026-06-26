CC = g++
CFLAGS += -ggdb3 -Iinclude
LIBS += -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl -lm
TARGETS = bin/00-triangle.elf bin/01-triangle.elf bin/02-triangle.elf \
          bin/03-triangle.elf bin/10-shader.elf bin/20-texture.elf    \
          bin/4.1-texture.elf bin/4.2-texture.elf bin/5.1-transformations.elf

all: $(TARGETS)

bin/00-triangle.elf         : src/00-triangle.cpp
bin/01-triangle.elf         : src/01-triangle.cpp
bin/02-triangle.elf         : src/02-triangle.cpp
bin/03-triangle.elf         : src/03-triangle.cpp
bin/10-shader.elf           : src/10-shader.cpp src/Shader.cpp
bin/20-texture.elf          : src/20-texture.cpp src/Shader.cpp
bin/4.1-texture.elf         : src/4.1-texture.cpp src/Shader.cpp
bin/4.2-texture.elf         : src/4.2-texture.cpp src/Shader.cpp
bin/5.1-transformations.elf : src/5.1-transformations.cpp src/Shader.cpp

$(TARGETS):
	$(CC) $(LIBS) $(CFLAGS) src/gl.c $^ -o $@

.PHONY: clean all
clean:
	rm -fv bin/*.elf
