import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hodi/model/account/account.dart';
import 'package:hodi/model/no_data/no_data_response.dart';
import 'package:hodi/model/user/get_user_response.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;
import 'package:retrofit/http.dart';

import 'endpoint.dart' as endpoint;

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String baseUrl,
  }) = _ApiClient;

  @GET(endpoint.getUser)
  Future<Account> getUserInfo();
}

extension ApiClientAWSS3 on ApiClient {
  Future<bool> uploadImage(String url, File image) async {
    try {
      final uri = Uri.parse(url);
      // resize before upload file
      final decodedImage = img.decodeImage(image.readAsBytesSync());
      if (decodedImage != null) {
        img.Image resizedImage = decodedImage;
        if (decodedImage.width > 800) {
          resizedImage = img.copyResize(decodedImage, width: 800);
        }

        Map<String, String> header = {};

        uri.queryParameters.forEach((k, v) {
          header[k] = v;
        });
        var response = await http.put(uri,
            body: img.encodeJpg(resizedImage), headers: header);
        log(response.body);
        if (response.statusCode == 200) {
          return true;
        }
      }

      return false;
    } catch (e) {
      return false;
    }
  }
}

extension ApiClientHandleError on ApiClient {
  String mapDioErrorToMessage(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return 'Connection timeout';
      case DioErrorType.response:
        // Parsing error response to string error
        if (error.response != null) {
          final res = error.response;
          if (res?.data != null) {
            try {
              final response = NoDataResponse.fromJson(res?.data);
              return response.message;
            } catch (e) {
              return 'Common error (${res?.statusCode ?? ''})';
            }
          }
          return 'Common error (${res?.statusCode ?? ''})';
        }
        return 'Common error (${error.toString()})';
      case DioErrorType.cancel:
        return 'Request was cancelled unexpectedly';
      case DioErrorType.other:
        return error.message;
    }
  }
}
