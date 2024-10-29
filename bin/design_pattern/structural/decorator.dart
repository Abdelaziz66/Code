abstract class SMSComponent {
  void sendSMS(String message, String recipient);
}

class SMSSender implements SMSComponent {
  @override
  void sendSMS(String message, String recipient) {
    print("------------------------------------");
    print("Sending SMS to $recipient: $message");
    print("------------------------------------");

  }
}


class SMSDecorator implements SMSComponent {
  final SMSComponent _smsComponent;

  SMSDecorator(this._smsComponent);

  @override
  void sendSMS(String message, String recipient) {
    print("From SMSDecorator");
    _smsComponent.sendSMS(message, recipient);
  }
}

class LoggingSMSDecorator extends SMSDecorator {
  LoggingSMSDecorator(super.smsComponent);

  @override
  void sendSMS(String message, String recipient) {
    print("Logging: About to send SMS to $recipient");
    super.sendSMS(message, recipient);
  }
}

class EncryptionSMSDecorator extends SMSDecorator {
  EncryptionSMSDecorator(super.smsComponent);

  @override
  void sendSMS(String message, String recipient) {
    final encryptedMessage = "[encrypted] $message"; //
    print("From EncryptionSMSDecorator");

    // Simulate encryption
    super.sendSMS(encryptedMessage, recipient);
  }
}

void callDecoratorPattern() {
  // Basic SMS sending
  SMSComponent smsSender1 = SMSSender();

  // Apply Logging decorator
  smsSender1 = LoggingSMSDecorator(smsSender1);

  // Apply Encryption decorator
  smsSender1 = EncryptionSMSDecorator(smsSender1);

  // Sending SMS with both logging and encryption
  smsSender1.sendSMS("Hello!", "+123456789");

  SMSComponent smsSender2= EncryptionSMSDecorator(LoggingSMSDecorator(SMSSender()));
  smsSender2.sendSMS("Hello!", "+123456789");


}
