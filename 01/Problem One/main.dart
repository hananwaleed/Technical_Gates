/*- 
  Problem one
    
    Given a Map of products with their prices, return the total sum
    Map<String, int> cart = {'apple': 5, 'banana': 3, 'cherry': 7};
 */

void main() {
  Map<String, int> cart = {'apple': 5, 'banana': 3, 'cherry': 7};

  int total = 0;
  for (var element in cart.keys) {
    total += cart[element]!;
  }

print("The total sum of all products in the cart is: $total");
}
