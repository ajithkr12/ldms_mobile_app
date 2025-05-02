import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ldms_mobile_app/0-services/token_storage_services.dart';
import 'package:ldms_mobile_app/models/device_model/device_model.dart';
import 'package:ldms_mobile_app/models/order_model/order_model.dart';
import 'package:ldms_mobile_app/constants/urls.dart';

class DeviceServices {
  static Future<OrderModel?> registerDevice(String name, String type, String serialNumber) async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.post(
        Uri.parse('${ConstantUrls.devicesbaseServerUrl}/registerDevice'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          "name": name,
          "type": type,
          "serialNumber": serialNumber,
        }),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody == null) {
          return null;
        }
        return OrderModel.fromJson(responseBody);
      }
      print('Failed ${response.statusCode} , body : ${response.body} ');
      return null;
    } catch (error) {
      print('Order placement failed: $error');
      return null;
    }
  }

  static Future<OrderModel?> editRegisteredDevice(
      String deviceId, String name, String type, String serialNumber) async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.post(
        Uri.parse('${ConstantUrls.devicesbaseServerUrl}/editRegisteredDevice'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          "deviceId": deviceId,
          "name": name,
          "type": type,
          "serialNumber": serialNumber,
        }),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody == null) {
          return null;
        }
        return OrderModel.fromJson(responseBody);
      }
      print('Failed ${response.statusCode} , body : ${response.body} ');
      return null;
    } catch (error) {
      print('Order placement failed: $error');
      return null;
    }
  }

  static Future<List<UserRegisteredDevice>?> getDevicesByCustomer() async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.get(
        Uri.parse('${ConstantUrls.devicesbaseServerUrl}getDevicesByCustomer'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody == null || responseBody is! List) {
          return null;
        }
        return responseBody.map<UserRegisteredDevice>((json) => UserRegisteredDevice.fromJson(json)).toList();
      }
      print('Failed ${response.statusCode} , body : ${response.body}');
      return null;
    } catch (error) {
      print('Fetching devices failed: $error');
      return null;
    }
  }
}
