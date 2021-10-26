class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.handleClick = this.handleClick.bind(this);
    this.setupBoard();
    this.bindEvents();
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
  
  bindEvents() {
    // this.el.addEventListener('click', this.handleClick);
    const cells = document.querySelectorAll('li');
    cells.forEach(cell => cell.addEventListener('click', this.handleClick));
  }
  
  handleClick(e) {
    //console.log('greet:', arguments)
    let square = e.target;
    console.log(square);
    this.makeMove(square)
  }
  
  makeMove(square) {
    let dataPos = square.dataset.pos
    let pos = [parseInt(dataPos[1]), parseInt(dataPos[3])];
    if (this.game.board.isEmptyPos(pos)) {
      this.game.playMove(pos);
      square.classList.toggle("mark");
    }
  }

}

module.exports = View;
