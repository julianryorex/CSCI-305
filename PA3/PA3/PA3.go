package main


import (
    "fmt" // print
    "os" // read/write
    "io" // for EOF
    "strconv" // convert string to int
    "bufio" // user input
    "strings" // check output name
    // "reflect" // check var types
)


func openReadFile(name string) string {

    file, err := os.Open(name) // opened file, now need to read
    check(err)

    // will read in chuncks because more efficient
    // create a buffer size

    buffer := make([]byte, 10)
    var content string

    for {
        bytes_read, err := file.Read(buffer)


        if bytes_read > 0 {
            content += string(buffer[:bytes_read])
        }

        if err == io.EOF {
            fmt.Println("File has been succesfully read.")
            break
        }

        if err != nil {
            fmt.Println("Error has occured during file read.")
        }
    }
    file.Close()
    return string(content)
}

func parse(content string) string {

    var updatedContent string
    for i := 0; i < len(content); i++ {
        current := string(content[i])
         if _, err := strconv.Atoi(current); err != nil { // check if it's not a number
             if current == "\n" { // remove the newlines
                 current = " "
             }
             updatedContent += current
         }
    }
    return updatedContent
}

func write(name string, content string) {

    name = strings.Trim(name, "\n\r") // trim new line

    if !strings.Contains(name, ".txt") { // check if .txt is in name
        name += ".txt"
    }

    file, err := os.Create(name)
    check(err)

    writeString := bufio.NewWriter(file)
    _, err = writeString.WriteString(content)
    check(err)

    fmt.Println("Contents have been written to output file called " + name + ".\n")
    writeString.Flush() // actually writes the content in the file
}

func check(e error) {
    if e != nil {
        panic(e)
    }
}


func main() {

    if len(os.Args) != 2 { // checks number of args
        fmt.Println("Please enter the right number of argument.")
        os.Exit(1)
    }
    reader := bufio.NewReader(os.Stdin) // user input

    content := openReadFile(os.Args[1])
    parsedContent := parse(content)
    fmt.Print("Input the name of your output file here: --> ")
    fileName, _ := reader.ReadString('\n')
    write(fileName, parsedContent)
}
