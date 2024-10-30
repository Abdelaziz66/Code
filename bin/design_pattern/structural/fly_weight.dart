// Flyweight class representing the shared style properties for characters
class CharacterStyle {
  final String font;
  final int size;
  final String color;

  CharacterStyle(this.font, this.size, this.color);
}

// Flyweight Factory to manage the shared character styles
class CharacterFactory {
  static final Map<String, CharacterStyle> _styles = {};

  static CharacterStyle getStyle(String font, int size, String color) {
    final key = "$font-$size-$color";
    if (!_styles.containsKey(key)) {
      _styles[key] = CharacterStyle(font, size, color);
      print("Creating new CharacterStyle: $key");
    }
    return _styles[key]!;
  }
}

// Character class representing extrinsic state (position, content)
class Character {
  final String content;
  final int position;
  final CharacterStyle style;

  Character(this.content, this.position, this.style);

  void render() {
    print("Rendering '$content' at position $position with style ${style.font}, ${style.size}px, ${style.color}");
  }
}

// Example usage
void callFlyWeight() {
  final style1 = CharacterFactory.getStyle("Arial", 12, "Black");
  final style2 = CharacterFactory.getStyle("Arial", 12, "Black");

  final charA = Character("A", 0, style1);
  final charB = Character("B", 1, style1);
  final charC = Character("C", 2, style2);

  charA.render();
  charB.render();
  charC.render();
}
