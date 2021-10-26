class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.setupBoard;
  }

  setupBoard() {
    const grid = document.createElement("ul");

    for (let rowIdx = 0; rowIdx < 3; rowIdx++) {
      for (let colIdx = 0; colIdx < 3; colIdx++) {
        let cell = document.createElement("li");
        cell.dataset.pos = JSON.stringify([rowIdx, colIdx]);

        grid.appendChild(cell);
      }
    }

    this.el.append(grid);
  }
  
  bindEvents() {}

  handleClick(e) {}

  makeMove(square) {}

}

module.exports = View;
