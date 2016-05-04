// RELEASE 0
// Function takes array with string elements
// Find length of each string elements
// Compare lengths and identify greatest integer
// Return the above string element

function sort(list){
  for (var i = list.length -1; i != list.indexOf(list[0]); i--) {
    if (list[i].length < list[i-1].length) {
      list.unshift(list.splice(list.indexOf(list[i]), 1).toString());}
  }
    console.log(list)
}

sort(['hi', 'hey','wazzzzzzzzup', 'hello', 'salutations', 'sup'])




// test = ["long phrase","longest phrase","longer phrase"]
// console.log(test[0]);
// console.log(test[0].length);
// console.log(test[0+1].length);
// console.log(test.indexOf(1))
// test[1] = test[0]
// console.log(test)

// console.log(test[1].length > test[2].length)
// test.push(test.splice(test.indexOf(test[1]), 1).toString())
// console.log(test)
