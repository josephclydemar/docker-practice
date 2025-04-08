ASSEMBLER = nasm
ASSEMBLER_FLAGS = -f elf64
LINKER = ld
LINKER_FLAGS =

BUILD_MODE = debug
ifeq ($(BUILD_MODE),debug)
	ASSEMBLER_FLAGS += -g -F stabs
else
	LINKER_FLAGS += -s
endif

SOURCE_MAIN = src/main.s
OBJECT_MAIN = lib/main.o

SOURCE_IO = src/io.s
OBJECT_IO = lib/io.o

TARGET_BIN = build/asm-code.out


.PHONY: all run clean

all: $(TARGET_BIN)

run: $(TARGET_BIN)
	@$(TARGET_BIN)

clean:
	$(RM) $(wildcard build/*.out)
	$(RM) $(wildcard lib/*.o)


$(TARGET_BIN): $(OBJECT_IO) $(OBJECT_MAIN)
	$(LINKER) $(LINKER_FLAGS) $^ -o $@

$(OBJECT_IO): $(SOURCE_IO)
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) $< -o $@

$(OBJECT_MAIN): $(SOURCE_MAIN)
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) $< -o $@
