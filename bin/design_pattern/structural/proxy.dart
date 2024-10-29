class SMSSender {
  void sendSMS(String message, String recipient) {
    print("Sending SMS to $recipient: $message");
    // Simulate SMS sending
  }
}

class SMSSenderProxy {
  final SMSSender _smsSender = SMSSender();
  int _smsCount = 0;
  final int _dailyLimit;

  SMSSenderProxy(this._dailyLimit);

  void sendSMS(String message, String recipient) {
    if (_smsCount < _dailyLimit) {
      _smsSender.sendSMS(message, recipient);
      _smsCount++;
      print("SMS sent. Count: $_smsCount");
    } else {
      print("Daily SMS limit reached. Cannot send more messages today.");
    }
  }

  void resetDailyCount() {
    _smsCount = 0;
    print("SMS count reset.");
  }
}

void callProxyPattern() {
  final smsProxy = SMSSenderProxy(3);  // Set a daily limit of 3 SMS

  smsProxy.sendSMS("Hello!", "+123456789");  // Send 1st SMS
  smsProxy.sendSMS("How are you?", "+123456789");  // Send 2nd SMS
  smsProxy.sendSMS("Goodbye!", "+123456789");  // Send 3rd SMS
  smsProxy.sendSMS("This won't send", "+123456789");  // Exceeds limit

  smsProxy.resetDailyCount();  // Reset counter for a new day
  smsProxy.sendSMS("New Day SMS", "+123456789");  // Can send again
}
