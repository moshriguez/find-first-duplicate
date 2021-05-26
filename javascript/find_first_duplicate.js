function findFirstDuplicate(arr) {
	// type your code here
	const newArr = [];
  for (let element of arr) {
		if (newArr.includes(element)) {
      return element;
    } else {
      newArr.push(element);
    }
	};
  return -1;
}

if (require.main === module) {
	// add your own tests in here
	console.log('Expecting: 3');
	console.log('=>', findFirstDuplicate([2, 1, 3, 3, 2]));

	console.log('Expecting: -1');
	console.log('=>', findFirstDuplicate([1, 2, 3, 4]));

	console.log('Expecting: 5');
	console.log('=>', findFirstDuplicate([5, 5, 1, 2, 3, 4]));

	console.log('Expecting: 1');
	console.log('=>', findFirstDuplicate([1, 2, 3, 4, 1]));

	console.log('Expecting: 5');
	console.log('=>', findFirstDuplicate([1, 2, 3, 4, 5, 5]));
}

module.exports = findFirstDuplicate;

// Please add your pseudocode to this file
// And a written explanation of your solution
