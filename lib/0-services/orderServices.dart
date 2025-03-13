import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ldms_mobile_app/0-services/token_storage_services.dart';
import 'package:ldms_mobile_app/models/order_model/order_model.dart';
import 'package:ldms_mobile_app/constants/urls.dart';

class OrderServices {
  static Future<OrderModel?> placeOrder(OrderModel orderData) async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.post(
        Uri.parse('${ConstantUrls.baseServerUrl}orders/place'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(orderData),
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

  static Future<List<OrderModel>?> getOrdersByCustomerId() async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.get(
        Uri.parse('${ConstantUrls.baseServerUrl}orders/getOrdersByCustomerId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody == null) {
          return null;
        }
        return OrderModel.fromJsonList(responseBody);
      }
      print('Failed ${response.statusCode} , body : ${response.body} ');
      return null;
    } catch (error) {
      print('Get order by ID failed: $error');
      return null;
    }
  }

  static Future<List<OrderModel>?> getOrdersByStatusAndDate(String status, String date) async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.get(
        Uri.parse('${ConstantUrls.baseServerUrl}orders/status?status=$status&date=$date'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body) as List;
        return responseBody.map((order) => OrderModel.fromJson(order)).toList();
      }
      print('Failed ${response.statusCode} , body : ${response.body} ');
      return null;
    } catch (error) {
      print('Get orders by status and date failed: $error');
      return null;
    }
  }

  // static Future<List<OrderModel>?> getOrdersByCustomerId(String customerId) async {
  //   try {
  //     final token = await TokenStorageService.getToken();
  //     final response = await http.get(
  //       Uri.parse('${ConstantUrls.baseServerUrl}orders/customer/$customerId'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $token',
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       final responseBody = jsonDecode(response.body) as List;
  //       return responseBody.map((order) => OrderModel.fromJson(order)).toList();
  //     }
  //     print('Failed ${response.statusCode} , body : ${response.body} ');
  //     return null;
  //   } catch (error) {
  //     print('Get orders by customer ID failed: $error');
  //     return null;
  //   }
  // }

  static Future<bool> updateOrderStatus(String id, String status) async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.put(
        Uri.parse('${ConstantUrls.baseServerUrl}orders/$id/status'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({'status': status}),
      );

      if (response.statusCode == 200) {
        return true;
      }
      print('Failed ${response.statusCode} , body : ${response.body} ');
      return false;
    } catch (error) {
      print('Update order status failed: $error');
      return false;
    }
  }
}
