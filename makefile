# Makefile for COBOL project

# Compiler and flags
COBC     := cobc
CFLAGS   := -x -free          # -x: executable, -free: free-format source
STRIP    := strip
STRIPFLAGS := --strip-unneeded

# Source and target
SRC      := hello-world.cbl
TARGET   := hello-world

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(SRC)
	$(COBC) $(CFLAGS) $< -o $@ 
	$(STRIP) $(STRIPFLAGS) $@

# Clean build artifacts
clean:
	rm -f $(TARGET)

# Rebuild everything
rebuild: clean all

# Run the program
run: $(TARGET)
	./$(TARGET)

# Build Docker image
docker-build:
	docker build -t cobol-hello .

# Run Docker container
docker-run: docker-build
	docker run --rm cobol-hello

# Full cycle: build and run locally
dev: all run

# Phony targets
.PHONY: all clean rebuild run docker-build docker-run dev