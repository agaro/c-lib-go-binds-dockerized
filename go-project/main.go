package main

/*
#cgo CFLAGS: -I../c-project
#cgo LDFLAGS: -L../c-project -lsum
#include "../c-project/sum.h"
*/
import "C"
import "fmt"

func main() {
	a := 5
	b := 3
	result := C.sum(C.int(a), C.int(b))
	fmt.Printf("The sum of %d and %d is %d\n", a, b, int(result))
}
