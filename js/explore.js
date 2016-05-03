//Function will take a string
//Create a new string to hold reversed string
//Add characters from original string to the new string in reversed order
//Return the now reversed string

var str = "hello";
reversedString = ""

for (i = str.length -1; i >= 0; i --) {
    reversedString += str[i]
}
// i starts at 4 which corresponds to "o" str[4] then is decreased by 1 every interation and the next correcponsing letter is moves into the reversedString.

console.log(reversedString)
