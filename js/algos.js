/////////////////////// RELEASE 0
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

/////////////////////// RELEASE 1
//Take two objects
//Store matchFound as false to start
//Iterate through one objects key/pair value store
//Iterate through other object and set up conditionals to compare
//If conditional is met and a match is found then matchFound will be updated to true if not, it does not change
//Return matchFound results

function search(obj1, obj2){
  var matchFound = false;
  for (var key in obj1) {
    compareKey = key + " =" + obj1[key];
      for (key in obj2){
        otherKey = key + " =" + obj2[key];
        if (compareKey == otherKey){
          // console.log(compareKey + " =" + otherKey + " true") //Prints out each comparison
          matchFound = true
         } else {
          //  console.log(compareKey + "!=" + otherKey + " false") //Prints out each comparison
         }
      }
  }
  console.log(matchFound)
}

/////////////////////// Driver Code
//findLongest Driver Code
  findLongest(['hi', 'hey','wazzzzzzzzup', 'hello', 'salutations', 'sup'])
  findLongest(['xxxxxxxxxxxxx', 'x','xx', 'xxx', 'xxx', 'xxxx'])
  findLongest(['blah', 'blahhher','blahhhhhhhest'])

// Search Driver Code
  console.log("Should be true:")
   search({name: "Amanda", age: 23, ethnicity: "Chinese"},{age: 23, name: "Bob", ethnicity: "Japanese"})
  console.log("Should be false:")
    search({dog: "fido", cat: "marigold", hippo: "bob"},
    {cat: "fido", dog: "marigold", giraffe: "bob"})
  console.log("Should be true:")
    search({wed: "sunny", mon: "rainy", fri: "hurricane"},
    {fri: "hurricane", tue: "snow", mon: "thunder"})
