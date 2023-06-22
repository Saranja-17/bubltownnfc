import 'package:bubltown_nfc/common/app.dart';
import 'package:bubltown_nfc/models/dio_models.dart';
import 'package:bubltown_nfc/models/vendor_model.dart';
import 'package:bubltown_nfc/services/dio_service.dart';

class IndustryService {
  static Future<dynamic> getVeddor() async {
    var res = await DioService().get(
        'Industry/v2.0/Vendor/34d42342-9e51-443a-ca9a-08db3125ae23?%5Binclude%5D=ServiceOptions,VendorAddress,OperationHour&lat=52.406822&lon=-1.519693',
        token: true);
    CommonRestBody body = App.responseMessage(res);
    if (!body.isError) {
      return Vendor.fromJson(body.result);
    } else {
      return body.error;
    }
  }
}
