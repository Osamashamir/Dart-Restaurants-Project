import 'dart:io';

class MenuItem {
  final String name;
  final double price;

  MenuItem(this.name, this.price);
}

class Restaurant {
  final List<MenuItem> menu;

  Restaurant(this.menu);

  void displayMenu() {
    print('Menu:');
    for (var i = 0; i < menu.length; i++) {
      print('${i + 1}. ${menu[i].name} - \$${menu[i].price}');
    }
  }

  void placeOrder(List<int> itemIndices) {
    double total = 0;
    print('Order Details:');
    for (var index in itemIndices) {
      if (index >= 1 && index <= menu.length) {
        var menuItem = menu[index - 1];
        total += menuItem.price;
        print('${menuItem.name} - \$${menuItem.price}');
      }
    }
    print('Total: \$${total.toStringAsFixed(2)}');
  }
}

void main() {
  // Create menu items
  var menu = [
    MenuItem('Hamburger', 8.99),
    MenuItem('Pizza', 12.99),
    MenuItem('Salad', 6.99),
    MenuItem('Fries', 3.99),
    MenuItem('Ice Cream', 4.99),
  ];

  // Create the restaurant instance
  var restaurant = Restaurant(menu);

  // Display the menu
  restaurant.displayMenu();

  // Get user input for order
  stdout.write('Enter the item numbers separated by commas: ');
  var input = stdin.readLineSync()!;
  var itemIndices =
      input.split(',').map((item) => int.parse(item.trim())).toList();

  // Place the order
  restaurant.placeOrder(itemIndices);
}
