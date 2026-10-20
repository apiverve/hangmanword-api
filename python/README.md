Hangman Word Generator API
============

Hangman Word Generator provides random hangman words for word games, with difficulty levels based on word length and, on paid plans, category filtering.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-hangmanwordgenerator.svg)](https://pypi.org/project/apiverve-hangmanwordgenerator/)

This is a Python wrapper for the [Hangman Word Generator API](https://apiverve.com/marketplace/hangmanword?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-hangmanwordgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-hangmanwordgenerator
```

---

## Configuration

Before using the Hangman Word Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient

# Initialize the client with your APIVerve API key
api = HangmanwordAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Hangman Word Generator API documentation is found here: [https://docs.apiverve.com/ref/hangmanword](https://docs.apiverve.com/ref/hangmanword?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient

# Initialize the client with your APIVerve API key
api = HangmanwordAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `HangmanwordAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient, HangmanwordAPIClientError

api = HangmanwordAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except HangmanwordAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient, HangmanwordAPIClientError

api = HangmanwordAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except HangmanwordAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient, HangmanwordAPIClientError

query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}

# Using context manager ensures proper cleanup
with HangmanwordAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except HangmanwordAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient

# Enable debug mode
api = HangmanwordAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_hangmanwordgenerator.apiClient import HangmanwordAPIClient

api = HangmanwordAPIClient("[YOUR_API_KEY]")

query = {
    "category": "random",
    "difficulty": "medium",
    "count": 1,
    "image": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
