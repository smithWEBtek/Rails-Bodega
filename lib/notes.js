$(function () {
	$("a.see_cart").on("click", function (e) {

		$.ajax({
			method: "GET",
			url: this.href,
			dataType: 'json'
		}).done(function (response) {

			let newUser = new User(response)

			$("div.cart").html(newUser.userHTML())
		});
		e.preventDefault();
	})
})

$(function () {
	$("a.purchases").on("click", function (e) {
		alert("You clicked this")
	})
})

class User {
	constructor(obj) {
		this.id = obj.id
		this.name = obj.name
		this.money = obj.money
		this.items = obj.items
		this.purchases = obj.purchases
		this.admin = obj.admin
	}
}

User.prototype.userHTML = function () {

	let userItems = this.items.map((item, index) => {
		return (`
			<li>${item.purchase_id}</li>
		`)
	})

	return (`
		<div>${this.name}</div>
		<div>${this.money}</div>
		<div>${this.admin}</div>
		<div><ol>${userItems}</ol></div>
	`)
}

User.prototype.userPurchase = function () {

	return (`
		<div>
			<form>
				<input

			</form>
		</div>

	`)
}