package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	fmt.Println("Welcome to THE CLI CALCULATOR...\nEnter the operation and all values to be calculated separated by space:\nFor addition type:         add <a> <b>\nFor subtraction type:      sub <a> <b>\nFor multiplication type:   mul <a> <b>\nFor division type:         div <a> <b>")
	for {
	START:
		reader := bufio.NewReader(os.Stdin)
		input, _ := reader.ReadString('\n')

		args := strings.Fields(input)
		if len(args) != 3 {
			fmt.Print("\nEnter an operation from the option above and two(2) values to be calculated, each separated by space:\nFor addition type:         add <a> <b>\nFor subtraction type:      sub <a> <b>\nFor multiplication type:   mul <a> <b>\nFor division type:         div <a> <b>\n")
			goto START
		}
		for i := 0; i < len(args); i++ {
			args[0] = strings.ToLower(args[0])
		}
		for i := 0; i < len(args); i++ {
			switch args[0] {
			case "add":
				if args[1] >= "0" && args[1] <= "9" {
					if args[2] >= "0" && args[2] <= "9" {
						n1, _ := strconv.Atoi(args[1])
						n2, _ := strconv.Atoi(args[2])
						fmt.Print(args[1], "+", args[2], "=", n1+n2, "\n")
						goto END
					} else {
						fmt.Print("\nEnter a valid digit\n")
						goto START
					}
				} else {
					fmt.Print("\nEnter a valid digit\n")
					goto START
				}

			case "sub":
				if args[1] >= "0" && args[1] <= "9" {
					if args[2] >= "0" && args[2] <= "9" {
						n1, _ := strconv.Atoi(args[1])
						n2, _ := strconv.Atoi(args[2])
						fmt.Print(args[1], "-", args[2], "=", n1-n2, "\n")
						goto END
					} else {
						fmt.Print("\nEnter a valid digit\n")
						goto START
					}
				} else {
					fmt.Print("\nEnter a valid digit\n")
					goto START
				}
			case "div":
				if args[1] >= "0" && args[1] <= "9" {
					if args[2] >= "0" && args[2] <= "9" {
						n1, _ := strconv.Atoi(args[1])
						n2, _ := strconv.Atoi(args[2])
						if args[1] == "0" && args[2] == "0" {
							fmt.Print("\nundefined!!!\n")
							goto END
						} else if args[2] == "0" {
							fmt.Print("\nundefined!!!\n")
							goto END
						} else {
							fmt.Print(args[1], " / ", args[2], " = ", n1/n2, " ", "Remainder ", n1%n2, "\n")
							goto END
						}
					} else {
						fmt.Print("\nEnter a valid digit\n")
						goto START
					}
				} else {
					fmt.Print("\nEnter a valid digit\n")
					goto START
				}
			case "mul":
				if args[1] >= "0" && args[1] <= "9" {
					if args[2] >= "0" && args[2] <= "9" {
						n1, _ := strconv.Atoi(args[1])
						n2, _ := strconv.Atoi(args[2])
						fmt.Print(args[1], "*", args[2], "=", n1*n2, "\n")
						goto END
					} else {
						fmt.Print("\nEnter a valid digit\n")
						goto START
					}
				} else {
					fmt.Print("\nEnter a valid digit\n")
					goto START
				}
			default:
				fmt.Print("\nEnter a valid keyword for any operation above\n")
				goto START
			}
		}
	END:
		fmt.Print("\nDo you want to perform any other operation?\nIf YES\nEnter the operation and two(2) values to be calculated, each separated by space:\nFor addition type:         add <a> <b>\nFor subtraction type:      sub <a> <b>\nFor multiplication type:   mul <a> <b>\nFor division type:         div <a> <b>\n\nIf NO\nPress letter [Q] to Quit\n\n")
		// quitter := bufio.NewReader(os.Stdin)
		// exitt, _ := quitter.ReadString('\n')
		// if strings.ToUpper(exitt) == "Q" {
		// 	break
		// } else {
		// 	fmt.Print("\nEnter only letter [Q] to Quit Or;\n")
		// 	goto END
		// }
	}
}
