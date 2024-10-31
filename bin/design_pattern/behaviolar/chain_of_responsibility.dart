enum ComplexityLevel { low, medium, high }

abstract class SupportHandler {
  SupportHandler? nextHandler;

  void setNextHandler(SupportHandler handler) {
    nextHandler = handler;
  }

  void handleRequest(ComplexityLevel level);
}

class BasicSupport extends SupportHandler {
  @override
  void handleRequest(ComplexityLevel level) {
    if (level == ComplexityLevel.low) {
      print("BasicSupport: Handling low-complexity ticket.");
    } else if (nextHandler != null) {
      nextHandler!.handleRequest(level);
    } else {
      print("BasicSupport: Unable to handle ticket.");
    }
  }
}

class IntermediateSupport extends SupportHandler {
  @override
  void handleRequest(ComplexityLevel level) {
    if (level == ComplexityLevel.medium) {
      print("IntermediateSupport: Handling medium-complexity ticket.");
    } else if (nextHandler != null) {
      nextHandler!.handleRequest(level);
    } else {
      print("IntermediateSupport: Unable to handle ticket.");
    }
  }
}

class AdvancedSupport extends SupportHandler {
  @override
  void handleRequest(ComplexityLevel level) {
    if (level == ComplexityLevel.high) {
      print("AdvancedSupport: Handling high-complexity ticket.");
    } else {
      print("AdvancedSupport: Unable to handle ticket.");
    }
  }
}

void callChainOfResponsibility() {
  // Set up the chain of responsibility
  var basic = BasicSupport();
  var intermediate = IntermediateSupport();
  var advanced = AdvancedSupport();

  basic.setNextHandler(intermediate);
  intermediate.setNextHandler(advanced);

  // Process tickets with different complexity levels
  print("Submitting a low-complexity ticket:");
  basic.handleRequest(ComplexityLevel.low);

  print("\nSubmitting a medium-complexity ticket:");
  basic.handleRequest(ComplexityLevel.medium);

  print("\nSubmitting a high-complexity ticket:");
  basic.handleRequest(ComplexityLevel.high);
}
