class Codigo {

  constructor(text) {
    if (!this._valida(text)) throw new Error(`O texto ${text} não é código válido`);
    this._text = text
  }

  _valida(text) {
      return /\D{3}-\D{2}-\d{2}/.test(text);
    }

  get text() {
    return this._text
  }

}

let codigo1 = new Codigo('GWZ-JJ-12')
console.log(codigo1.text)

let codigo2 = new Codigo('1X1-JJ-12'); // inválido
console.log(codigo2.text);