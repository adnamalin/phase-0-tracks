// RELEASE 0
// Function takes array with string elements
// Iterate strings through
// If string.length is greater than previously set length standard then make string.length the new standard to compare to and store the string into a variable to call
//Keep iterating through array and strings whill keep going through conditional process


function findLongest(list){
  var compareToLength = 0;
  var longestString = "";
    for(var i=0; i < list.length; i++){
        if(list[i].length > compareToLength){
            var compareToLength = list[i].length;
            longestString = list[i];
        }
    }
  console.log(longestString)
}

findLongest(['hi', 'hey','wazzzzzzzzup', 'hello', 'salutations', 'sup'])
findLongest(['xxxxxxxxxxxxx', 'x','xx', 'xxx', 'xxx', 'xxxx'])
findLongest(['blah', 'blahhher','blahhhhhhhest'])
