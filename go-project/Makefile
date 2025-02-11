all: build

build:
	# Build the C library
	cd ../c-project && $(MAKE)
	# Build the Go project
	go build -o main main.go

clean:
	# Clean the C project
	cd ../c-project && $(MAKE) clean
	# Clean the Go project
	rm -f main
