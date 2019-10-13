package main

import "fmt"

func main() {
	s := make([]string, 3)
	fmt.Println("emp: ", s)
	fmt.Println(len(s))
	s = append(s, "d")
	fmt.Println(s)
	fmt.Println(len(s))
	cop := make([]string, len(s))
	copy(cop, s)
	fmt.Println("Cop: " , cop)

	g := "Hello world"
	fmt.Println(string(g[0]))

}
