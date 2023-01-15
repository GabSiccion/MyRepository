function shapechange(element) {
  if (element.innerHTML == "Circle")
    document.getElementById("cake").style.borderRadius = "50%";
  if (element.innerHTML == "Square")
    document.getElementById("cake").style.borderRadius = "5%";
}

function icingcolorchange(element) {
  document.getElementById("cake").style.backgroundColor = element.value;
}

function textchange(element) {
  console.log(element.value);
  document.getElementById("cake-text").innerHTML = element.value;
}

function sizechange(selectedSize) {
  let cake = document.getElementById("cake");

  switch (selectedSize) {
    case "Small":
      cake.style.height = "300px";
      cake.style.width = "300px";
      break;
    case "Medium":
      cake.style.height = "450px";
      cake.style.width = "450px";
      break;
    case "Large":
      cake.style.height = "600px";
      cake.style.width = "600px";
      break;
    default:
      console.log("broken");
  }
}
