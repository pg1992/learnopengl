CC = g++
CFLAGS += -ggdb3 -Iinclude
LIBS += -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl
TARGETS = bin/00-triangle.elf bin/01-triangle.elf bin/02-triangle.elf bin/03-triangle.elf

all: $(TARGETS)

bin/00-triangle.elf: src/00-triangle.cpp
bin/01-triangle.elf: src/01-triangle.cpp
bin/02-triangle.elf: src/02-triangle.cpp
bin/03-triangle.elf: src/03-triangle.cpp

$(TARGETS):
	$(CC) $(LIBS) $(CFLAGS) src/gl.c $< -o $@

.PHONY: clean all
clean:
	rm -fv bin/*.elf
