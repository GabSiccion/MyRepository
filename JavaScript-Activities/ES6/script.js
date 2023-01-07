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
