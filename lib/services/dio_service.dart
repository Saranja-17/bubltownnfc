import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../common/app.dart';
import '../common/globel_variables.dart';
import '../models/dio_models.dart';

class DioService {
  get(String url, {bool token = false}) async {
    var dio = Dio();
    printUrlAndHeaderAndBody(
        url: baseUrl + url,
        body: {},
        header: await getHeader(token),
        method: "get");
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
    printUrlAndHeaderAndBody(
        url: baseUrl + url,
        body: {},
        header: await getHeader(token),
        method: "post");
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

      headers['Authorization'] =
          "Bearer eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiMjkxZTg1NzUtYjlmMi00NDljLTk2MTQtMTkwOGU0ZWNlNmMwIiwiVXNlcklkIjoiMjkxZTg1NzUtYjlmMi00NDljLTk2MTQtMTkwOGU0ZWNlNmMwIiwiRmlyc3ROYW1lIjoiVmlub2phIiwiTGFzdE5hbWUiOiJSYXNhc3VudGhhcmFtIiwiTG9naW5UeXBlIjoiRW1haWwiLCJVc2VyVHlwZSI6IlZlbmRvciIsIkNsaWVudElkIjoiNDcwN2M2MWEtMmE3MS00MmM3LThjZTItMDhkOGNmNDNmNDcxIiwiQ2xpZW50TmFtZSI6ImJ1Ymx0b3duX3ZlbmRvcl9hcHBfYWxsIiwiQ2xpZW50QXBwVHlwZSI6Ik1vYmlsZSIsIkxhbmd1YWdlIjoiZW4tR0IiLCJDaGFubmVsSWQiOiJmZGZmMmUxOS0zNGQxLTQ5MGQtOGM1Yi1jMWJjNzY3ZTY1YTAiLCJDaGFubmVsVHlwZSI6IkFsbCIsIkNoYW5uZWxOYW1lIjoiVmVuZG9yIGFwcCBhbGwiLCJQaG9uZW51bWJlciI6IiIsIlBob25lbnVtYmVyVmVyaWZpZWQiOmZhbHNlLCJFbWFpbCI6InJ2aW5vamExOTk2QGdtYWlsLmNvbSIsIlR3b2ZhY3RvckVuYWJsZWQiOmZhbHNlLCJPcmlnaW5JZCI6ImNjNDU1NDI3LWJlN2YtNDM2NC1lYmIzLTA4ZGFlMzExMzk0YSIsIk9yaWdpbk5hbWUiOiJGbG9yYSBTaGluZSIsIlRva2VuVHlwZSI6IkxvZ2luVG9rZW4iLCJWMiI6IlRydWUiLCJJc1N1cGVyVXNlciI6dHJ1ZSwiUm9sZSI6Ilt7XCJSb2xlSWRcIjpcIjk1MzUyODY3LTViMDUtNDhjMS1hYjhhLWM3YmM5ODBhOWExZFwiLFwiUm9sZU5hbWVcIjpcIlN1cGVyIFVzZXJcIixcIk9yZ2luSWRcIjpcImNjNDU1NDI3LWJlN2YtNDM2NC1lYmIzLTA4ZGFlMzExMzk0YVwifV0iLCJuYmYiOjE2ODczMzE0MjgsImV4cCI6MTcxODg2NzQyOCwiaXNzIjoiVUNEUCIsImF1ZCI6IkJ1YmxfdXNlcnMifQ.cfRsNB0_pOJRz8jmMoZJQkpR3HYtSCp32uj-5hoCs3g";
    }
    debugPrint(headers['Authorization']);
    return headers;
  }

  //print the data and help to copy the data
  printUrlAndHeaderAndBody(
      {required String url, dynamic body, dynamic header, method}) async {
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
