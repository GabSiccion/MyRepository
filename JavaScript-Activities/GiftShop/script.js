function buy(price) {
	var money = document.getElementById("money");

	if (money.value < price) {
		alert("Not enough money.");
	} else {
		money.value = money.value - price;
	}
}
