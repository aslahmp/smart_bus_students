class MothlyUserPaymentModel {
  late num amunt;
  late String date;
  late String month;
  MothlyUserPaymentModel(
      {required this.amunt, required this.date, required this.month});
  MothlyUserPaymentModel.fromjson(Map<dynamic, dynamic> json) {
    amunt = json['amunt'] ?? 0;
    date = json['date'] ?? '0';
    month = json['month'] ?? '';
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["amunt"] = amunt;
    _data["date"] = date;
    _data["month"] = month;
    return _data;
  }
}
