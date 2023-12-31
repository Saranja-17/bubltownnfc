import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../common/app.dart';
import '../common/globel_variables.dart';
import '../models/dio_models.dart';


class DioService {
  get(String url, {bool token = false}) async {
    var dio = Dio();
    printUrlAndHeaderAndBody(url: baseUrl + url, body: {}, header: await getHeader(token), method: "get");
    final res = await dio.get(baseUrl + url,
        options: Options(
          headers: await getHeader(token),
          validateStatus: (status) => true,
        ));
    CommonRestBody body = App.responseMessage(res);
    if (body.error.status == HttpCodeEnum.ok.status.toString()) {
      return res;
    } else {
      return res;
    }
  }

  post(String url, Map data, {bool token = false}) async {
    var dio = Dio();
    printUrlAndHeaderAndBody(url: baseUrl + url, body: {}, header: await getHeader(token), method: "post");
    final res = await dio.post(baseUrl + url,
        data: json.encode(data),
        options: Options(
          headers: await getHeader(token),
          validateStatus: (status) => true,
        ));
    CommonRestBody body = App.responseMessage(res);
    if (body.error.status == HttpCodeEnum.ok.status.toString()) {
      return res;
    } else {
      return res;
    }
  }


  Future<Map<String, dynamic>> getHeader(bool isAuth) async {
    Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
      'accept-language': 'en-US',
    };
    if (isAuth) {
      // headers['Authorization'] = getIt<UserProvider>().isAuthorized
      //     ? 'Bearer ${await HiveService.retrieveFromHive(name: 'token', boxName: 'account')}'
      //     : "Bearer " + getIt<UserProvider>().clientToken;
    }
    debugPrint(headers['Authorization']);
    return headers;
  }

  //print the data and help to copy the data
  printUrlAndHeaderAndBody({required String url, dynamic body, dynamic header, method}) async {
    debugPrint("----------------------------------------");
    debugPrint(url);
    debugPrint(jsonEncode(body));
    debugPrint(jsonEncode(header));
    debugPrint("----------------------------------------");
  }
}

enum HttpCodeEnum {
  ok,
  created,
  accepted,
  badRequest,
  unauthorized,
  forbidden,
  notFound,
  requestTimeout,
  internalServerError,
  refereshTokenReguired
}

extension HttpCodeEnumExtenstion on HttpCodeEnum {
  int get status {
    switch (this) {
      case HttpCodeEnum.ok:
        return 200;
      case HttpCodeEnum.created:
        return 201;
      case HttpCodeEnum.accepted:
        return 202;
      case HttpCodeEnum.badRequest:
        return 400;
      case HttpCodeEnum.unauthorized:
        return 401;
      case HttpCodeEnum.forbidden:
        return 403;
      case HttpCodeEnum.notFound:
        return 404;
      case HttpCodeEnum.requestTimeout:
        return 408;
      case HttpCodeEnum.internalServerError:
        return 500;
      case HttpCodeEnum.refereshTokenReguired:
        return 410;
      default:
        return 400;
    }
  }
}
