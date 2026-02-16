/// Response models for the Hangman Word Generator API.

/// API Response wrapper.
class HangmanwordResponse {
  final String status;
  final dynamic error;
  final HangmanwordData? data;

  HangmanwordResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HangmanwordResponse.fromJson(Map<String, dynamic> json) => HangmanwordResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HangmanwordData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Hangman Word Generator API.

class HangmanwordData {
  List<HangmanwordDataWordsItem>? words;
  int? count;
  String? difficulty;
  String? category;
  String? html;

  HangmanwordData({
    this.words,
    this.count,
    this.difficulty,
    this.category,
    this.html,
  });

  factory HangmanwordData.fromJson(Map<String, dynamic> json) => HangmanwordData(
      words: (json['words'] as List?)?.map((e) => HangmanwordDataWordsItem.fromJson(e)).toList(),
      count: json['count'],
      difficulty: json['difficulty'],
      category: json['category'],
      html: json['html'],
    );
}

class HangmanwordDataWordsItem {
  String? word;
  String? blanks;
  int? length;
  int? uniqueLetters;
  String? difficulty;
  String? category;
  int? maxGuesses;

  HangmanwordDataWordsItem({
    this.word,
    this.blanks,
    this.length,
    this.uniqueLetters,
    this.difficulty,
    this.category,
    this.maxGuesses,
  });

  factory HangmanwordDataWordsItem.fromJson(Map<String, dynamic> json) => HangmanwordDataWordsItem(
      word: json['word'],
      blanks: json['blanks'],
      length: json['length'],
      uniqueLetters: json['uniqueLetters'],
      difficulty: json['difficulty'],
      category: json['category'],
      maxGuesses: json['maxGuesses'],
    );
}

class HangmanwordRequest {
  String? category;
  String? difficulty;
  int? count;

  HangmanwordRequest({
    this.category,
    this.difficulty,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      if (category != null) 'category': category,
      if (difficulty != null) 'difficulty': difficulty,
      if (count != null) 'count': count,
    };
}
