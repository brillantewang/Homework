const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let response1, response2;

reader.question('Would you like tea? ', function (response1) {
  console.log(`you said ${response1}`);
  reader.question('Would you like some biscuits? ', function (response2) {
    console.log(`you said ${response2}`);

    const first = (response1 === 'no') ? "don't" : "do";
    const second = (response2 === 'no') ? "don't" : "do";

    console.log(`So you ${first} want tea and you ${second} want biscuits.`);
    reader.close();  
  })});



// function teaAndBiscuits () {
//   const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
//   });
//
//   let first, second;
//
//   reader.question('Would you like some tea?', (res) => {
//     first = res;
//     console.log(`You replied ${res}.`);
//   });
//
//   reader.question('Would you like some biscuits?', (res) => {
//     second = res;
//     console.log(`You replied ${res}.`);
//   });
//
//   const firstRes = (first === 'yes') ? 'do' : 'don\'t';
//   const secondRes = (second === 'yes') ? 'do' : 'don\'t';
//   console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
//   reader.close();
// }
//
// teaAndBiscuits()
