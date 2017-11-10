import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = { result: 0, num1: "", num2: "" }
  }

  //your code here
  setNum1(e) {
    let input = e.currentTarget;
    e.preventDefault();
    this.setState({ num1: parseInt(input.value) });
  }

  setNum2(e) {
    let input = e.currentTarget;
    e.preventDefault();
    this.setState({ num2: parseInt(input.value) });
  }

  add() {
    let result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract() {
    let result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply() {
    let result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide() {
    let result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  clear() {
    this.setState({ num1: "", num2: "" });
  }

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1.bind(this)} value={this.state.num1}></input>
        <input onChange={this.setNum2.bind(this)} value={this.state.num2}></input>
        <button onClick={this.clear.bind(this)}>Clear</button>
        <br />
        <button onClick={this.add.bind(this)}>+</button>
        <button onClick={this.subtract.bind(this)}>-</button>
        <button onClick={this.multiply.bind(this)}>*</button>
        <button onClick={this.divide.bind(this)}>/</button>
      </div>
    );
  }
}

export default Calculator;
