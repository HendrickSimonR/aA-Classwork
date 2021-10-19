Array.prototype.myEach = function(cb) {
  let newArr = [];

  for (let i = 0; i <= this.length -1; i++) {
    newArr.push(cb(this[i]));
  }

  return newArr;
}

let arr = [1, 3, 5, 7, 9, 11];
let cb = function (num) {
  return num + 1;
}

console.log(arr.myEach(cb));

