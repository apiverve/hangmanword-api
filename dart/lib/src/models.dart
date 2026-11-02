/// Response models for the Hangman Word Generator API.

/// API Response wrapper.
class HangmanwordResponse {
  final String status;
  final dynamic error;
  final HangmanwordData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HangmanwordResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HangmanwordResponse.fromJson(Map<String, dynamic> json) => HangmanwordResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HangmanwordData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Hangman Word Generator API.

class HangmanwordData {
  List<HangmanwordDataWordsItem>? words;
  num? count;
  String? difficulty;
  String? category;
  String? html;
  HangmanwordDataImage? image;

  HangmanwordData({
    this.words,
    this.count,
    this.difficulty,
    this.category,
    this.html,
    this.image,
  });

  factory HangmanwordData.fromJson(Map<String, dynamic> json) => HangmanwordData(
      words: (json['words'] as List?)?.map((e) => HangmanwordDataWordsItem.fromJson(e)).toList(),
      count: json['count'],
      difficulty: json['difficulty'],
      category: json['category'],
      html: json['html'],
      image: json['image'] != null ? HangmanwordDataImage.fromJson(json['image']) : null,
    );
}

class HangmanwordDataWordsItem {
  String? word;
  String? blanks;
  num? length;
  num? uniqueLetters;
  String? difficulty;
  String? category;
  num? maxGuesses;

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

class HangmanwordDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  HangmanwordDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory HangmanwordDataImage.fromJson(Map<String, dynamic> json) => HangmanwordDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class HangmanwordRequest {
  String? category;
  String? difficulty;
  int? count;
  bool? image;

  HangmanwordRequest({
    this.category,
    this.difficulty,
    this.count,
    this.image,
  });

  Map<String, dynamic> toJson() => {
      if (category != null) 'category': category,
      if (difficulty != null) 'difficulty': difficulty,
      if (count != null) 'count': count,
      if (image != null) 'image': image,
    };
}
