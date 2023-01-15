//back tick
const food = "Tacos";
console.log(`I just ate ${food} earlier.`);

//deconstructing
const file = {
  firstName: "Gab",
  gender: "Male",
  cart: ["Tea", "Lemon", "Mangos", "Chicken", "Salt"],
};

const { firstName, gender, cart } = file;
console.log(`Name: ${firstName}, gender: ${gender}, cart${cart} `);

//arrow function
const myFunky = (lastName) => {
  console.log(`${lastName} is quite funky`);
};
myFunky("Power");

//for of loop
const charactersTJ = [
  {
    name: "Jerry",
    race: "Mouse",
  },
  {
    name: "Tom",
    race: "Cat",
  },
];

for (let characters of charactersTJ) {
  const { name, race } = characters;
  console.log(`${name} and ${race}`);
}

//Rest operator
function sumArray(...nums) {
  let sum = 0;
  for (let num of nums) {
    sum += num;
  }
  console.log(`this is the sum of the array ${sum}`);
}

sumArray(1, 2, 3, 4);
sumArray(5, 8, 10);
