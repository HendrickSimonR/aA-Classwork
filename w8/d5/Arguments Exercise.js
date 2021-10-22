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

// const sum = (...args) => {    // function sum(arguments)
//   let total = 0;

//   for (let i = 0; i < args.length; i++) {
//     total += args[i];
//   }

//   return total;
// }



// console.log(sum(1, 2, 3, 4)); // === 10;
// console.log(sum(1, 2, 3, 4, 5)); // === 15;


// class Cat {
//   constructor(name) {
//     this.name = name;
//   }

//   says(sound, person) {
//     console.log(`${this.name} says ${sound} to ${person}!`);
//     return true;
//   }
// }

// class Dog {
//   constructor(name) {
//     this.name = name;
//   }
// }

// Function.prototype.myBind = function(ctx) {
//   let func = this;
//   let bindArgs = Array.from(arguments).slice(1);

//   return function() {
//     let callArgs = Array.from(arguments);
//     return func.apply(ctx, bindArgs.concat(callArgs));
//   }
// }



// Function.prototype.myBind = function (ctx, ...args) {
//   let func = this;
//   let bindArgs = args;
//   console.log(func);
//   console.log(ctx);
//   console.log(bindArgs);

//   return function (...args) {
//     let callArgs = args;
//     console.log(args)
//     console.log('------------------------------');
//     return func.apply(ctx, bindArgs.concat(callArgs));
//   }
// }

// Function.prototype.myBind = function (ctx, ...args) {
//   let func = this;
//   let bindArgs = args;

//   return function (...args) {
//     let callArgs = args;
//     return func.apply(ctx, bindArgs.concat(callArgs));
//   }
// }


// const markov = new Cat("Markov");
// const pavlov = new Dog("Pavlov");

// markov.says("meow", "Ned");
// // Markov says meow to Ned!
// // true

// // bind time args are "meow" and "Kush", no call time args
// markov.says.myBind(pavlov, "meow", "Kush")();
// // Pavlov says meow to Kush!
// // true

// // no bind time args (other than context), call time args are "meow" and "a tree"
// markov.says.myBind(pavlov)("meow", "a tree");
// // Pavlov says meow to a tree!
// // true

// // bind time arg is "meow", call time arg is "Markov"
// markov.says.myBind(pavlov, "meow")("Markov");
// // Pavlov says meow to Markov!
// // true

// // no bind time args (other than context), call time args are "meow" and "me"
// const notMarkovSays = markov.says.myBind(pavlov);
// notMarkovSays("meow", "me");
// // Pavlov says meow to me!
// // true


function sumThree(num1, num2, num3) {
  return num1 + num2 + num3;
}

sumThree(4, 20, 6); // == 30

// you'll write `Function#curry`!
let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
f1 = f1(4); // [Function]
f1 = f1(20); // [Function]
f1 = f1(6); // = 30

// or more briefly:
sumThree.curry(3)(4)(20)(6); // == 30