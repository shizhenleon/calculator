while !false {


//set all the basics
var num1 = 0, num2 = 0
let operationType: Dictionary<String, (Int,Int) -> Int> = [
	"+": {$0 + $1},
	"-": {$0 - $1},
	"*": {$0 * $1},
	"/": {$0 / $1}]

//get the first number
while !false{
	print("num1:",terminator:"")
	if let number1 = Int(readLine()!){
	num1 = number1
	break
} else{
	print("Wrong input! Try again!")
	}
}

//get the second number
while !false{
	print("num2:",terminator:"")
	if let number2 = Int(readLine()!){
	num2 = number2
	break
}else{
	print("Wrong input! Try again!")
	}
}

//choose the operator sign
print("What calculation are you going to use (+,-,*,/)?")
if let sign = readLine(){
	if let currentOperation = operationType[sign]{
	print("\(num1)\(sign)\(num2)=\(currentOperation(num1,num2))")
	}

}



//Asking for quit
print("Continue?(Enter to continue,'N' to quit")
let answer = readLine()
if answer == "N"{
	break
}
}


