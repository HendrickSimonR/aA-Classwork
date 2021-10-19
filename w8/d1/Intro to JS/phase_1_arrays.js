Array.prototype.uniq = function () {
  let uniques = []

  for (let i = 0; i < this.length - 1 ; i++) {
    if (!uniques.includes(this[i])) {
      uniques.push(this[i]);
    }
  }

  return uniques;
}

// let arr = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
// console.log(arr.uniq());

// ([1, 2, 2, 3, 3, 3].uniq() => [1, 2, 3])

Array.prototype.twoSum = () => {
  let sums = []

  for (let i = 0; i <= this.length - 2; i++) {
    for (let j = i + 1; j <= this.length - 1; j++) {
      if (this[i] + this[j] === 0) {
        sums.push([i, j]);
      }
    }
  }

  return sums
} 

let arr = [1, -1, 4, 8, 6, -4, 2, -8]

console.log(arr.twoSum());


