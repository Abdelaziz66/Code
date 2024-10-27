// Define a Notification interface
abstract class Notification {
  void notifyUser();
}

// Implement SMS Notification
class SMSNotification implements Notification {
  @override
  void notifyUser() {
    print("Sending an SMS notification");
  }
}

// Implement Email Notification
class EmailNotification implements Notification {
  @override
  void notifyUser() {
    print("Sending an Email notification");
  }
}

// Implement Push Notification
class PushNotification implements Notification {
  @override
  void notifyUser() {
    print("Sending a Push notification");
  }
}

// Notification Factory Class with Factory Method
class NotificationFactory {
  static Notification createNotification(String type) {
    switch (type) {
      case 'SMS':
        return SMSNotification();
      case 'Email':
        return EmailNotification();
      case 'Push':
        return PushNotification();
      default:
        throw Exception("Notification type not supported");
    }
  }
}

void callFactoryMethod() {
  // Creating notifications using the factory method
  var smsNotification = NotificationFactory.createNotification('SMS');
  smsNotification.notifyUser(); // Output: Sending an SMS notification

  var emailNotification = NotificationFactory.createNotification('Email');
  emailNotification.notifyUser(); // Output: Sending an Email notification

  var pushNotification = NotificationFactory.createNotification('Push');
  pushNotification.notifyUser(); // Output: Sending a Push notification
}
