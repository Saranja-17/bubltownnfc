import 'package:bubltown_nfc/models/dio_models.dart';
import 'package:bubltown_nfc/models/vendor_model.dart';
import 'package:bubltown_nfc/services/industry_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class VendorViewModel extends BaseViewModel {
  bool isLoading = true;
  Vendor? vendor;
  ErrorModel? errorModel;

  void onInit(BuildContext context) {
    getVendorDetails();
  }

  getVendorDetails({String vendorId = ""}) async {
    await IndustryService.getVeddor().then((value) {
      if (value is Vendor) {
        vendor = value;
        isLoading = false;
        notifyListeners();
      } else {
        errorModel = value;
        isLoading = false;
        notifyListeners();
      }
    });
  }
}
