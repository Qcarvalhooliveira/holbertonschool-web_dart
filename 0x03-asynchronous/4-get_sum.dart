import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {

    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    double totalPrice = 0.0;

    for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = double.parse(priceData);
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    print('error caught: $e');
    return (-1);
  }
}
