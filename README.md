# Build a C library and Go binds it using Docker

This project shows how to build a C library and a Go application that binds to the C library using Docker.

The C library performs a sum operation, and the Go application calls this library to sum of two integers.

## Project Structure
```
/
├── c-project/
│   ├── sum.c
│   ├── sum.h
│   └── Makefile
├── go-project/
│   ├── main.go
│   └── Makefile
├── Dockerfile
└── README.md
```

- `c-project/`: The C library source code and its Makefile.
- `go-project/`: The Go application source code, that binds to the C library, and its Makefile.
- `Dockerfile`: Defines the multi-stage build process for the project.
- `README.md`: This file.

## Building the Project
At the project root directory:
```sh
docker build -t docker-c-lib-go-bind .
```

## Running the Project
Using the image tag name 'docker-c-lib-go-bind' (from the -t option above) run:
```sh
docker run --rm docker-c-lib-go-bind
```

This will output the sum of two integers calculated using the C library.

## License

This project is licensed under the BSD 0-Clause License. See the [LICENSE](LICENSE) file for more details.