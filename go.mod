module main.go

go 1.22.2


package main

import (
	// "bufio"
	"fmt"
	// "os"

	"strings"
)

func main() {
	fmt.Print("\nWelcome to THE CLI CALCULATOR...\nEnter an operation from the options below and two(2) values, each separated by space(THEN CLICK ENTER):\nFor addition:         add <a> <b>\nFor subtraction:      sub <a> <b>\nFor multiplication:   mul <a> <b>\nFor division:         div <a> <b>\n\nOR Press letter [q] (THEN CLICK ENTER) to quit: ")
	for {
	START:
		var (
			operator string
			num1     int
			num2     int
		)

		fmt.Scanln(&operator, &num1, &num2)
		// reader := bufio.NewReader(os.Stdin)
		// input, _ := reader.ReadString('\n')
		// args := strings.Fields(input)
		// args[0] = strings.ToLower(args[0])
		options := []string{"add", "sub", "mul", "div"}
		for _, op := range options {
			operator = strings.ToLower(operator)
			// if len(args) == 1 && args[0] == "q" {
			if operator == "q" && !(num1 >= 0 && num1 <= 9) && !(num2 >= 0 && num2 <= 9) {
				break
			} else if (strings.ContainsAny(operator, op)) && !(num1 >= 0 && num1 <= 9) && !(num2 >= 0 && num2 <= 9) {
				fmt.Print("\nEnter an operation from the options below and two(2) values, each separated by space(THEN CLICK ENTER):\nFor addition:         add <a> <b>\nFor subtraction:      sub <a> <b>\nFor multiplication:   mul <a> <b>\nFor division:         div <a> <b>\n\nOR Press letter [q] (THEN CLICK ENTER) to quit: ")
				goto START
			}
		}
		// args[0] = strings.ToLower(args[0])
		// args1, _ := strconv.Atoi(args[1])
		// args2, _ := strconv.Atoi(args[2])

		// for i := 0; i < len(args); i++ {
		switch operator {
		case "add":

			if num1 >= 0 && num1 <= 9 {
				if num2 >= 0 && num2 <= 9 {
					fmt.Print("\n>>>>>>>>>>>>>>>>>: ", num1, " + ", num2, " = ", num1+num2, "\n")
					goto END
				} else {
					fmt.Print("\nEnter a combination with valid digits\n")
					goto START
				}
			} else {
				fmt.Print("\nEnter a combination with valid digits\n")
				goto START
			}

		case "sub":
			if num1 >= 0 && num1 <= 9 {
				if num2 >= 0 && num2 <= 9 {
					fmt.Print("\n>>>>>>>>>>>>>>>>>: ", num1, " - ", num2, " = ", num1-num2, "\n")
					goto END
				} else {
					fmt.Print("\nEnter a combination with valid digits\n")
					goto START
				}
			} else {
				fmt.Print("\nEnter a combination with valid digits\n")
				goto START
			}
		// case "div":
		// 	if args[1] >= "0" && args[1] <= "9" {
		// 		if args[2] >= "0" && args[2] <= "9" {
		// 			n1, _ := strconv.Atoi(args[1])
		// 			n2, _ := strconv.Atoi(args[2])
		// 			if args[1] == "0" && args[2] == "0" {
		// 				fmt.Print("\nundefined!!!\n")
		// 				goto END
		// 			} else if args[2] == "0" {
		// 				fmt.Print("\nundefined!!!\n")
		// 				goto END
		// 			} else {
		// 				fmt.Print("\n>>>>>>>>>>>>>>>>>: ", args[1], " / ", args[2], " = ", n1/n2, " ", "Remainder ", n1%n2, "\n")
		// 				goto END
		// 			}
		// 		} else {
		// 			fmt.Print("\nEnter a combination with valid digits\n")
		// 			goto START
		// 		}
		// 	} else {
		// 		fmt.Print("\nEnter a combination with valid digits\n")
		// 		goto START
		// 	}
		// case "mul":
		// 	if args[1] >= "0" && args[1] <= "9" {
		// 		if args[2] >= "0" && args[2] <= "9" {
		// 			n1, _ := strconv.Atoi(args[1])
		// 			n2, _ := strconv.Atoi(args[2])
		// 			fmt.Print("\n>>>>>>>>>>>>>>>>>: ", args[1], " * ", args[2], " = ", n1*n2, "\n")
		// 			goto END
		// 		} else {
		// 			fmt.Print("\nEnter a combination with valid digits\n")
		// 			goto START
		// 		}
		// 	} else {
		// 		fmt.Print("\nEnter a combination with valid digits\n")
		// 		goto START
		// 	}
		default:
			fmt.Print("\nEnter a combination with a valid keyword for any operation below and two(2) values, each separated by space(THEN CLICK ENTER):\nFor addition:         add <a> <b>\nFor subtraction:      sub <a> <b>\nFor multiplication:   mul <a> <b>\nFor division:         div <a> <b>\n\nIf NO\nPress letter [q] (THEN CLICK ENTER) to quit: \n")
			goto START
		}
		// }
	END:
		fmt.Print("\nDo you want to perform any other operation?\nIf YES\nEnter an operation from the options below and two(2) values, each separated by space(THEN CLICK ENTER):\nFor addition:         add <a> <b>\nFor subtraction:      sub <a> <b>\nFor multiplication:   mul <a> <b>\nFor division:         div <a> <b>\n\nIf NO\nPress letter [q] (THEN CLICK ENTER) to quit: ")
	}
}
