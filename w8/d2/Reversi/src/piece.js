/**
 * Initializes the Piece with its color.
 */
function Piece (color) {
  this.color = color;
}

/**
 * Returns the color opposite the current piece.
 */
Piece.prototype.oppColor = function (otherColor) {
  if (this.color !== otherColor) {
    return this.color = otherColor;
  }
};

/**
 * Changes the piece's color to the opposite color.
 */
Piece.prototype.flip = function (cb, otherColor) {
  return this.cb(otherColor);
};

/**
 * Returns a string representation of the string
 * based on its color.
 */
Piece.prototype.toString = function () {
};

// DON'T TOUCH THIS CODE
if (typeof window === 'undefined'){
    module.exports = Piece;
}
// DON'T TOUCH THIS CODE