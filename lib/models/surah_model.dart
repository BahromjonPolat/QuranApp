class Surah {
  int? _surahNo;
  String? _arabic;
  String? _name;
  String? _meaning;
  String? _count;
  bool? _isMeccian;

  Surah({
    int? surahNo,
    String? arabic,
    String? name,
    String? meaning,
    String? count,
    bool? meccian,
  }) {
    if (surahNo != null) {
      _surahNo = surahNo;
    }
    if (arabic != null) {
      _arabic = arabic;
    }
    if (name != null) {
      _name = name;
    }
    if (meaning != null) {
      _meaning = meaning;
    }
    if (count != null) {
      _count = count;
    }

    if (meccian != null) {
      _isMeccian = meccian;
    }
  }

  int get surahNo => _surahNo!;

  String get arabic => _arabic!;

  String get name => _name!;

  String get meaning => _meaning!;

  String get count => _count!;

  bool get isMeccian => _isMeccian!;

  Surah.fromJson(Map<String, dynamic> json) {
    _surahNo = json['surahNo'];
    _arabic = json['arabic'];
    _name = json['name'];
    _meaning = json['meaning'];
    _count = json['count'];
    _isMeccian = json['isMeccian'] == 1 ? true : false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['surahNo'] = _surahNo;
    data['arabic'] = _arabic;
    data['name'] = _name;
    data['meaning'] = _meaning;
    data['count'] = _count;
    data['isMeccian'] = _isMeccian! ? 1 : 0;
    return data;
  }
}
