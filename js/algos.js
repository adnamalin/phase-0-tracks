/////////////////////// RELEASE 0
// No built in sort function //
// Function takes array with string elements
// Iterate strings through
// If string.length is greater than previously set length standard then make string.length the new standard to compare to and store the string into a variable to call
//Keep iterating through array and strings whill keep going through conditional process

function findLongest(list){
  var compareToLength = 0;
  var longestString = "";
    for(var i=0; i < list.length; i++){
        if(list[i].length > compareToLength){
            compareToLength = list[i].length;
            longestString = list[i];
        }
    }
  return longestString
}

/////////////////////// RELEASE 1
//No built in search functions//
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
  return matchFound
}

/////////////////////// RELEASE 2
//Take interger (x) for arguement
//Make x number of random words from 1-10 letters longe (loop)
//Take generated words and add to array (loop)

function generate(interger){
  var times = 0;
  var finalarr = [];

  while (times < interger) {
    var alphabetarr = "abcdefghijklmnopqrstuvwxyz".split('')
    var newword = [];
    randomlength = Math.floor((Math.random() * 10) + 1);
      for (i = 0; i < randomlength; i++) {
        randomletter = Math.floor((Math.random() * 25) + 1);
        newword.push(alphabetarr[randomletter])
      }
        var randomword = newword.join('');
        finalarr.push(randomword)
  times++}
    return finalarr
    // console.log(finalarr)
}

/////////////////////// Driver Code

//findLongest Driver Code
  // console.log(findLongest(['hi', 'hey','wazzzzzzzzup', 'hello', 'salutations', 'sup']))
  // console.log(findLongest(['xxxxxxxxxxxxx', 'x','xx', 'xxx', 'xxx', 'xxxx']))
  // console.log(findLongest(['blah', 'blahhher','blahhhhhhhest']))

// Search Driver Code
  // console.log("Should be true:")
  //  console.log(search({name: "Amanda", age: 23, ethnicity: "Chinese"},{age: 23, name: "Bob", ethnicity: "Japanese"}))
  // console.log("Should be false:")
  //   console.log(search({dog: "fido", cat: "marigold", hippo: "bob"},
  //   {cat: "fido", dog: "marigold", giraffe: "bob"}))
  // console.log("Should be true:")
  //   console.log(search({wed: "sunny", mon: "rainy", fri: "hurricane"},
  //   {fri: "hurricane", tue: "snow", mon: "thunder"}))

// Generate strings
  // generate(3)
  // generate(5)
  // generate(20)

//Feeds generate strings to longestString finder
for (x = 0; x < 10; x++) {
  var array = generate(Math.floor((Math.random() * 10) + 1))
  console.log(array)
  console.log('Longest Random String: '+ findLongest(array))
}
