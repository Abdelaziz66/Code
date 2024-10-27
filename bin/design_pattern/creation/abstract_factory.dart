// Step 1: Define Abstract Product Interfaces

abstract class SMSNotification {
  void sendSMS();
}

abstract class EmailNotification {
  void sendEmail();
}

abstract class PushNotification {
  void sendPush();
}

// Step 2: Define Concrete Products for Android

class AndroidSMSNotification implements SMSNotification {
  @override
  void sendSMS() {
    print("Sending SMS notification from Android");
  }
}

class AndroidEmailNotification implements EmailNotification {
  @override
  void sendEmail() {
    print("Sending Email notification from Android");
  }
}

class AndroidPushNotification implements PushNotification {
  @override
  void sendPush() {
    print("Sending Push notification from Android");
  }
}

// Step 3: Define Concrete Products for iOS

class iOSSMSNotification implements SMSNotification {
  @override
  void sendSMS() {
    print("Sending SMS notification from iOS");
  }
}

class iOSEmailNotification implements EmailNotification {
  @override
  void sendEmail() {
    print("Sending Email notification from iOS");
  }
}

class iOSPushNotification implements PushNotification {
  @override
  void sendPush() {
    print("Sending Push notification from iOS");
  }
}

// Step 4: Define the Abstract Factory Interface

abstract class NotificationFactory {
  SMSNotification createSMSNotification();
  EmailNotification createEmailNotification();
  PushNotification createPushNotification();
}

// Step 5: Implement Concrete Factories for Android and iOS

class AndroidNotificationFactory implements NotificationFactory {
  @override
  SMSNotification createSMSNotification() => AndroidSMSNotification();

  @override
  EmailNotification createEmailNotification() => AndroidEmailNotification();

  @override
  PushNotification createPushNotification() => AndroidPushNotification();
}

class iOSNotificationFactory implements NotificationFactory {
  @override
  SMSNotification createSMSNotification() => iOSSMSNotification();

  @override
  EmailNotification createEmailNotification() => iOSEmailNotification();

  @override
  PushNotification createPushNotification() => iOSPushNotification();
}

// Client Code

class NotificationService {
  final SMSNotification smsNotification;
  final EmailNotification emailNotification;
  final PushNotification pushNotification;

  NotificationService(NotificationFactory factory)
      : smsNotification = factory.createSMSNotification(),
        emailNotification = factory.createEmailNotification(),
        pushNotification = factory.createPushNotification();

  void sendNotifications() {
    smsNotification.sendSMS();
    emailNotification.sendEmail();
    pushNotification.sendPush();
  }
}

void callAbstractFactory() {
  // Using Android Notification Factory
  NotificationFactory androidFactory = AndroidNotificationFactory();
  NotificationService androidService = NotificationService(androidFactory);
  androidService.sendNotifications();
  // Output:
  // Sending SMS notification from Android
  // Sending Email notification from Android
  // Sending Push notification from Android

  // Using iOS Notification Factory
  NotificationFactory iOSFactory = iOSNotificationFactory();
  NotificationService iOSService = NotificationService(iOSFactory);
  iOSService.sendNotifications();
  // Output:
  // Sending SMS notification from iOS
  // Sending Email notification from iOS
  // Sending Push notification from iOS
}
