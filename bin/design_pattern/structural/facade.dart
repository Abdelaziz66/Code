// Subsystem classes
class Kitchen {
  void prepareOrder(String item) => print("Kitchen: Preparing $item...");
}

class Billing {
  void createInvoice(String item, double price) {
    print("Billing: Created invoice for $item. Amount: \$${price.toStringAsFixed(2)}.");
  }
}

class Notifications {
  void sendNotification(String message) => print("Notifications: $message");
}

// Facade class to simplify the order process
class OrderFacade {
  final Kitchen _kitchen = Kitchen();
  final Billing _billing = Billing();
  final Notifications _notifications = Notifications();

  void placeOrder(String item, double price) {
    print("Processing order for $item...");
    _kitchen.prepareOrder(item);
    _billing.createInvoice(item, price);
    _notifications.sendNotification("Order for $item has been placed successfully.");
  }
}

// Client code to use the facade
void callFacadePattern() {
  final orderFacade = OrderFacade();
  orderFacade.placeOrder("Pasta", 12.99);  // Simple interface for placing an order
}
