function madLib(verb, adjective, noun) {
  return 'We shall ${verb.to_uppercase} the ${adjective.to_uppercase} ${noun.to_uppercase}';
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(array) {
  result = [];

  for (let i = 0; i < array.length; i++) {
    let el = array[i];

    if (el % 3 === 0 && el % 5 !== 0) {
      result.push(el);
    } elsif (el % 5 === 0 && el % 3 !== 0) {
      result.push(el);
    }
  }

  return result;
}

function isPrime(number) {
  return false if number < 2;

  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

function sumOfNPrimes(n) {
  sum = 0;

  let i = 0;
  let j = 0;
  while (i < 4) {
    if (isPrime(j)) {
      sum += j;
      i++;
    }
    j++;
  }

  return sum;
}
