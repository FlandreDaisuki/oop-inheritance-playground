class Base {
  constructor() {
    this.fn();
    this.msg = 'base';
  }
  fn() { console.trace('Base:', this.msg); }
}

class Derived extends Base {
  constructor() {
    super();
    this.msg = 'derived';
  }
  fn() { console.trace('Derived:', this.msg); }
}

new Derived();
