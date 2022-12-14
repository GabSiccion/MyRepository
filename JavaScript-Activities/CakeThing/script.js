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