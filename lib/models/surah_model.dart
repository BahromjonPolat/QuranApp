class Surah {
  int? _surahNo;
  String? _arabic;
  String? _name;
  String? _meaning;
  String? _count;

  Surah({
    int? surahNo,
    String? arabic,
    String? name,
    String? meaning,
    String? count,
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
  }

  int? get surahNo => _surahNo;

  set surahNo(int? surahNo) => _surahNo = surahNo;

  String? get arabic => _arabic;

  set arabic(String? arabic) => _arabic = arabic;

  String? get name => _name;

  set name(String? name) => _name = name;

  String? get meaning => _meaning;

  set meaning(String? meaning) => _meaning = meaning;

  String? get count => _count;

  set count(String? count) => _count = count;

  Surah.fromJson(Map<String, dynamic> json) {
    _surahNo = json['surahNo'];
    _arabic = json['arabic'];
    _name = json['name'];
    _meaning = json['meaning'];
    _count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['surahNo'] = _surahNo;
    data['arabic'] = _arabic;
    data['name'] = _name;
    data['meaning'] = _meaning;
    data['count'] = _count;
    return data;
  }
}
