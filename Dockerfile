# C library layer
FROM gcc:latest AS c-builder
WORKDIR /app
COPY c-project/ /app/c-project/
RUN cd c-project && make

# Go binding layer
FROM golang:latest
WORKDIR /app
# Copy the C header
COPY c-project/sum.h /app/c-project/sum.h
# Copy the C library
COPY --from=c-builder /app/c-project/libsum.so /usr/local/lib/
COPY go-project/ /app/go-project/
# Set the library path
ENV LD_LIBRARY_PATH=/usr/local/lib
RUN cd go-project && go build -o main main.go
ENTRYPOINT ["/app/go-project/main"]
