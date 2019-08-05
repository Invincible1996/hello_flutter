import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class HttpUtils {
  static Dio dio;

  static const String API_PREFIX = 'https://novel.dkvirus.com/';
  static const int CONNECT_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 3000;

  static const String GET = 'get';
  static const String POST = 'post';
  static const String PUT = 'put';
  static const String PATCH = 'patch';
  static const String DELETE = 'delete';

  // request method
  static  request(String url, {data, method}) async {
    data = data ?? {};
    method = method ?? 'GET';

    /// restful 请求处理
    data.forEach((key, value) {
      if (url.indexOf(key) != -1) {
        url = url.replaceAll(':$key', value.toString());
      }
    });

    /// 打印请求相关信息：请求地址、请求方式、请求参数
    print('liang-请求地址：【$method $url】');
    print('liang-请求参数：' + data.toString());

    Dio dio = createInstance();
    Response response;
    try {
      response = await dio.request(url,
          data: data, options: new Options(method: method));
      print('响应数据：' + response.data.toString());
    } on DioError catch (e) {
      /// 打印请求失败相关信息
      print('请求出错：' + e.toString());
    }
    return json.decode(response.data);
  }

  /// 创建dio 实例对象
  static Dio createInstance() {
    if (dio == null) {
      /// 全局属性：请求前缀、连接超时时间、响应超时时间
      BaseOptions options = new BaseOptions(
          baseUrl: API_PREFIX,
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          contentType: ContentType.json,
          responseType: ResponseType.json);
      dio = new Dio(options);
    }
    return dio;
  }

  static clear() {
    dio = null;
  }
}
