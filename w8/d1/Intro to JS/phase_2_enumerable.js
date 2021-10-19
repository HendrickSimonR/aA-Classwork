Array.prototype.myEach = function(cb) {
  for (let i = 0; i <= this.length -1; i++) {
    cb(this[i]);
  }
}

// let arr = [1, 3, 5, 7, 9, 11];
// let cb = function (num) {
//   return num + 1;
// }

// console.log(arr.myEach(cb));


Array.prototype.myMap = function (cb) {
  let newArr = [];

  this.myEach( function(num) {
      newArr.push(cb(num));
    }
  )

  return newArr;
}


let arr = [1, 3, 5, 7, 9, 11];
let cb = function (num) {
  return num += 1;
}

// console.log(arr);
// console.log(arr.myEach(cb));
// console.log(arr);

console.log(arr.myMap(cb))

