/// This class is used in the [mobileapplicationlist_item_widget] screen.
class MobileapplicationlistItemModel {
  MobileapplicationlistItemModel({
    this.mobileApplication,
    this.price,
    this.ten,
    this.text,
    this.off,
    this.id,
  }) {
    mobileApplication = mobileApplication ?? "Mobile Application Development";
    price = price ?? "Activation code: GMAD10";
    ten = ten ?? "10";
    text = text ?? "%";
    off = off ?? "Off";
    id = id ?? "";
  }

  String? mobileApplication;

  String? price;

  String? ten;

  String? text;

  String? off;

  String? id;
}
