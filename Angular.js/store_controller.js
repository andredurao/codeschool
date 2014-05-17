(function() {
	var app = angular.module('store', []);

	app.controller('StoreController', function() {
		this.products = gems
	});

	var gems = [
	{
		name: 'Dodecahedron',
		price: 2.95,
		description: '...',
		canPurchase: false,
		soldOut: true,
	},
	{
		name: 'Pentagonal Gem',
		price: 12.95,
		description: '...',
		canPurchase: false,
	},
	]

});



// HTML
// <body ng-controller="StoreController as store">
// <div ng-repeat="product in store.products">
// <div ng-hide="store.product.soldOut">
// <h1>{{store.product.name</h1>
// <p>{{store.product.description}}</p>
// <button ng-show="store.product.canPurchase">Add to Cart</button>



