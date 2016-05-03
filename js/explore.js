//Function will take a string
//Create a new string to hold reversed string
//Add characters from original string to the new string in reversed order
//Return the now reversed string

// USE LOOP
var str = "hello";
reversedString = ""

for (i = str.length -1; i >= 0; i --) {
    reversedString += str[i]
}

// i starts at 4 which corresponds to "o" str[4] then is decreased by 1 every iteration and the next corresponding letter is moved into the reversedString.

console.log(reversedString)

// PUT LOOP INTO FUNTION

function reverse(string) {
  reversedString = ""
    for (i = string.length -1; i >= 0; i --)
        {reversedString += string[i]}
    return reversedString
}

// Add CONDITIONAL

var testGreeting = reverse("salutations"); //should pass
var testGreeting = reverse("hello"); //should not pass

if (testGreeting.length > 7) {
  console.log(testGreeting);
} else {console.log("Greeting is too short");}
