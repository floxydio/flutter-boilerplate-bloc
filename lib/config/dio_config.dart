import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:boilerplatebloc/config/error_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class DioConfig {
  static Future<Either<ErrorConfig, Response>> getRequest(String url,
      {Map<String, dynamic>? headers, required String serviceName}) async {
    var dio = Dio();
    dio.interceptors.add(AwesomeDioInterceptor(
        logRequestTimeout: false,
        logResponseHeaders: false,
        logger: debugPrint));
    final response = await dio.get(url,
        options: Options(
            headers: headers,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 200) {
      return Right(response.data);
    } else {
      return Left(ErrorConfig(serviceName,
          "Something Went Wrong! With This Service : $serviceName"));
    }
  }

  static Future<Either<ErrorConfig, Response>> postRequest(String url,
      {required Map<String, dynamic> formData,
      required Map<String, dynamic> headers,
      required String serviceName}) async {
    var dio = Dio();
    dio.interceptors.add(AwesomeDioInterceptor(
        logRequestTimeout: false,
        logResponseHeaders: false,
        logger: debugPrint));
    final response = await dio.post(url,
        data: formData,
        options: Options(
            headers: headers,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 201) {
      return Right(response.data);
    } else {
      return Left(ErrorConfig(serviceName,
          "Something Went Wrong! With This Service : $serviceName"));
    }
  }

  static Future<Either<ErrorConfig, Response>> editRequest(String url,
      {required Map<String, dynamic> formData,
      required Map<String, dynamic> headers,
      required String serviceName}) async {
    var dio = Dio();
    dio.interceptors.add(AwesomeDioInterceptor(
        logRequestTimeout: false,
        logResponseHeaders: false,
        logger: debugPrint));
    final response = await dio.put(url,
        data: formData,
        options: Options(
            headers: headers,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 200) {
      return Right(response.data);
    } else {
      return Left(ErrorConfig(serviceName,
          "Something Went Wrong! With This Service : $serviceName"));
    }
  }

  static Future<Either<ErrorConfig, Response>> deleteRequest(String url,
      {Map<String, dynamic>? headers, required String serviceName}) async {
    var dio = Dio();
    dio.interceptors.add(AwesomeDioInterceptor(
        logRequestTimeout: false,
        logResponseHeaders: false,
        logger: debugPrint));
    final response = await dio.delete(url,
        options: Options(
            headers: headers,
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    if (response.statusCode == 200) {
      return Right(response.data);
    } else {
      return Left(ErrorConfig(serviceName,
          "Something Went Wrong! With This Service : $serviceName"));
    }
  }
}
