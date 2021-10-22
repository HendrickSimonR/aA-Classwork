// sum
// Write a sum function that takes any number of arguments:

// sum(1, 2, 3, 4) === 10;
// sum(1, 2, 3, 4, 5) === 15;
// Solve it first using the arguments keyword, then rewrite your solution to use the ... rest operator.

// const sum = function() {    // function sum(arguments)
//   let total = 0; 

//   for (let i= 0; i < arguments.length; i++) {
//     total += arguments[i];
//   }

//   return total;
// } 

// const sum = (...args) => {    // function sum(arguments)
//   let total = 0;

//   for (let i = 0; i < args.length; i++) {
//     total += args[i];
//   }

//   return total;
// }

const sum = (...args) => {    // function sum(arguments)
  let total = 0;

  for (let i = 0; i < args.length; i++) {
    total += args[i];
  }

  return total;
}



console.log(sum(1, 2, 3, 4)); // === 10;
console.log(sum(1, 2, 3, 4, 5)); // === 15;