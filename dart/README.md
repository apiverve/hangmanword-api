# Hangman Word Generator API - Dart/Flutter Client

Hangman Word Generator provides random hangman words for word games, with difficulty levels based on word length and, on paid plans, category filtering.

[![pub package](https://img.shields.io/pub/v/apiverve_hangmanword.svg)](https://pub.dev/packages/apiverve_hangmanword)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Hangman Word Generator API](https://apiverve.com/marketplace/hangmanword?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_hangmanword: ^1.2.5
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
      'count': 1,
      'image': true
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
        "word": "PORCUPINE",
        "blanks": "_ _ _ _ _ _ _ _ _",
        "length": 9,
        "uniqueLetters": 8,
        "difficulty": "medium",
        "category": "animals",
        "maxGuesses": 7
      }
    ],
    "count": 1,
    "difficulty": "medium",
    "category": "animals",
    "html": "<html><head><title>Hangman Words</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 600px; margin: 0 auto;}h1 {text-align: center;}.word-card {background: #f5f5f5; padding: 25px; margin: 20px 0; border-radius: 10px; text-align: center;}.blanks {font-size: 32px; font-family: monospace; letter-spacing: 8px; margin: 20px 0;}.info {font-size: 14px; color: #666;}.category {background: #2196F3; color: white; padding: 5px 15px; border-radius: 20px; display: inline-block; margin-bottom: 15px;}.hangman {font-size: 40px; margin: 20px 0;}</style></head><body><h1>Hangman</h1><div class='word-card'><span class='category'>animals</span><div class='hangman'>&#128128;</div><div class='blanks'>_ _ _ _ _ _ _ _ _</div><div class='info'>9 letters | 8 unique | Max 7 wrong guesses</div></div></body></html>",
    "image": {
      "imageName": "d6e69eac-546c-4a2b-8413-2b65fd4a109a_hangman.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/hangmanword/d6e69eac-546c-4a2b-8413-2b65fd4a109a_hangman.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010232&Signature=En2KyqlZwODc1wOwqTyuVtHq5LqNHuFXdn9Xw6nKlwhmB2SMV9HTSwpfVi9SS1tC6tnq0sntOPZ4ANH8McPxnjqFJhT2VKXAObQSRha6IHR9J1ymSpH%2F5TJ4AmlRZ8nLvW1jXPWjNvnUvgrd%2BfN5zK1u9pQ1MYatBVeg63y0rOdxSPcJBMX%2BDdgzG1lJK3Rmugr0HWoVb9ocfk8R%2FGVPsLXzHuwZySOk%2BCyQ1IZAWoqYuX7v3wKf3JHhiK9ZQ%2FG58j2dSychhcDsBZyKXN1wSpRsRB%2F03F6zKkykiiVw%2FuGr9kjPGK1QRJ9XJZzLZ0Z9S%2BQ6ZoD5FrCJwTIVXTPHxg%3D%3D",
      "expires": 1766010232291
    }
  }
}
```

## API Reference

- **API Home:** [Hangman Word Generator API](https://apiverve.com/marketplace/hangmanword?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/hangmanword](https://docs.apiverve.com/ref/hangmanword?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
