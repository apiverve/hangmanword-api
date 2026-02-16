# Hangman Word Generator API - Dart/Flutter Client

Hangman Word Generator provides random words for hangman games with category filtering and difficulty levels based on word length.

[![pub package](https://img.shields.io/pub/v/apiverve_hangmanword.svg)](https://pub.dev/packages/apiverve_hangmanword)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Hangman Word Generator API](https://apiverve.com/marketplace/hangmanword?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_hangmanword: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_hangmanword/apiverve_hangmanword.dart';

void main() async {
  final client = HangmanwordClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'category': 'random',
      'difficulty': 'medium',
      'count': 1
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "words": [
      {
        "word": "GIRAFFE",
        "blanks": "_ _ _ _ _ _ _",
        "length": 7,
        "uniqueLetters": 6,
        "difficulty": "medium",
        "category": "animals",
        "maxGuesses": 6
      }
    ],
    "count": 1,
    "difficulty": "medium",
    "category": "animals",
    "html": "<html><head><title>Hangman Words</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 600px; margin: 0 auto;}h1 {text-align: center;}.word-card {background: #f5f5f5; padding: 25px; margin: 20px 0; border-radius: 10px; text-align: center;}.blanks {font-size: 32px; font-family: monospace; letter-spacing: 8px; margin: 20px 0;}.info {font-size: 14px; color: #666;}.category {background: #2196F3; color: white; padding: 5px 15px; border-radius: 20px; display: inline-block; margin-bottom: 15px;}.hangman {font-size: 40px; margin: 20px 0;}</style></head><body><h1>Hangman</h1><div class='word-card'><span class='category'>animals</span><div class='hangman'>&#128128;</div><div class='blanks'>_ _ _ _ _ _ _</div><div class='info'>7 letters | 6 unique | Max 6 wrong guesses</div></div></body></html>"
  }
}
```

## API Reference

- **API Home:** [Hangman Word Generator API](https://apiverve.com/marketplace/hangmanword?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/hangmanword](https://docs.apiverve.com/ref/hangmanword?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
