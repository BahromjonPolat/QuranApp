class Verse {
  int? _verse;
  int? _paraNo;
  String? _arabic;
  String? _meaning;
  String? _transcription;
  String? _audio;
  bool? _hasBookmark;
  int? _surahNo;

  Verse(
      {int? verse,
      int? paraNo,
      String? arabic,
      String? meaning,
      String? transcription,
      String? audio,
      bool? hasBookmark,
      int? surahNo}) {
    if (verse != null) {
      _verse = verse;
    }
    if (paraNo != null) {
      _paraNo = paraNo;
    }
    if (arabic != null) {
      _arabic = arabic;
    }
    if (meaning != null) {
      _meaning = meaning;
    }
    if (transcription != null) {
      _transcription = transcription;
    }
    if (audio != null) {
      _audio = audio;
    }
    if (hasBookmark != null) {
      _hasBookmark = hasBookmark;
    }
    if (surahNo != null) {
      _surahNo = surahNo;
    }
  }

  int get verse => _verse!;

  int get paraNo => _paraNo!;

  String get arabic => _arabic!;

  String get meaning => _meaning!;

  String get transcription => _transcription!;

  String get audio => _audio!;

  bool get hasBookmark => _hasBookmark!;

  int get surahNo => _surahNo!;

  Verse.fromJson(Map<String, dynamic> json) {
    _verse = json['verse'];
    _paraNo = json['paraNo'];
    _arabic = json['arabic'];
    _meaning = json['meaning'];
    _transcription = json['transcription'];
    _audio = json['audio'];
    _hasBookmark = json['hasBookmark'];
    _surahNo = json['surahNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['verse'] = _verse;
    data['paraNo'] = _paraNo;
    data['arabic'] = _arabic;
    data['meaning'] = _meaning;
    data['transcription'] = _transcription;
    data['audio'] = _audio;
    data['hasBookmark'] = _hasBookmark;
    data['surahNo'] = _surahNo;
    return data;
  }
}
