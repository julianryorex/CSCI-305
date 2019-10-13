package main

import "fmt"

func main() {
    m := make(map[string]int) // format: make(map[key-type]val-type)
    m["k1"] = 0
    m["k2"] = 9
    m["p"] = 10
    fmt.Println(m)
    fmt.Println("Length:", len(m))
    delete(m, "p")
    _, present := m["k1"]
    fmt.Println(present)
    fmt.Println(m)
    c,  a := add()
    fmt.Println(a)
    fmt.Println(c)
    sum(1,2,3)
    sum(9,8,0,7)

}

func add() (int, int) {
    return 3, 7
}

func sum(nums ...int) {
    fmt.Print(nums, " ")
    total := 0
    for _, num := range nums {
        total += num
    }
    fmt.Println(total)
}
