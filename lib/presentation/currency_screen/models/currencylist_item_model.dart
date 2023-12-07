import '../../../core/app_export.dart';/// This class is used in the [currencylist_item_widget] screen.
class CurrencylistItemModel {CurrencylistItemModel({this.dollar, this.dollar1, this.dollar2, this.id, }) { dollar = dollar  ?? ImageConstant.imgIconDollar;dollar1 = dollar1  ?? "Dollar";dollar2 = dollar2  ?? ImageConstant.imgIcon50;id = id  ?? ""; }

String? dollar;

String? dollar1;

String? dollar2;

String? id;

 }
