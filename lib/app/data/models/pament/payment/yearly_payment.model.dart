import 'mothly_payment.model.dart';

class YearlyUserPaymentModel {
  late MothlyUserPaymentModel? jan;
  late MothlyUserPaymentModel? feb;
  late MothlyUserPaymentModel? mar;
  late MothlyUserPaymentModel? apr;
  late MothlyUserPaymentModel? may;
  late MothlyUserPaymentModel? jun;
  late MothlyUserPaymentModel? jul;
  late MothlyUserPaymentModel? aug;
  late MothlyUserPaymentModel? sep;
  late MothlyUserPaymentModel? oct;
  late MothlyUserPaymentModel? nov;
  late MothlyUserPaymentModel? dec;
  List<MothlyUserPaymentModel?> getList() {
    return [
      jan,
      feb,
      mar,
      apr,
      may,
      jun,
      jul,
      aug,
      sep,
      oct,
      nov,
      dec,
    ];
  }

  YearlyUserPaymentModel({
    this.jan,
    this.feb,
    this.mar,
    this.apr,
    this.may,
    this.jun,
    this.jul,
    this.aug,
    this.sep,
    this.oct,
    this.nov,
    this.dec,
  });
  YearlyUserPaymentModel.fromjson(Map<dynamic, dynamic> json) {
    jan = json['jan'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['jan'],
          )
        : null;
    feb = json['feb'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['feb'],
          )
        : null;
    mar = json['mar'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['mar'],
          )
        : null;
    apr = json['apr'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['apr'],
          )
        : null;
    may = json['may'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['may'],
          )
        : null;
    jun = json['jun'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['jun'],
          )
        : null;
    jul = json['jul'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['jul'],
          )
        : null;
    aug = json['aug'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['aug'],
          )
        : null;
    sep = json['sep'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['sep'],
          )
        : null;
    oct = json['oct'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['oct'],
          )
        : null;
    nov = json['nov'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['nov'],
          )
        : null;
    dec = json['dec'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['dec'],
          )
        : null;
  }
}
