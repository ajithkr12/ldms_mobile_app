import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ldms_mobile_app/0-services/token_storage_services.dart';
import 'package:ldms_mobile_app/models/customer_model/customer_model.dart';
import 'package:ldms_mobile_app/constants/urls.dart';

class AuthService {
  static Future<CustomerModel?> signInWithGoogleServer(String idToken) async {
    try {
      final response = await http.post(
        Uri.parse('${ConstantUrls.mobilebaseServerUrl}auth/google'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'token': idToken}),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        final token = responseBody['token'];
        final tokenDetails = responseBody['userDetails'];

        if (token != null) {
          TokenStorageService.setToken(token);
        }

        if (token != null && tokenDetails != null) {
          return CustomerModel.fromJson(tokenDetails);
        }

        return null;
      } else {
        throw Exception('Failed to authenticate with backend: ${response.statusCode}');
      }
    } catch (error) {
      print('Google sign-in failed: $error');
      return null;
    }
  }

  static Future<CustomerModel?> getUserWithTokenId() async {
    try {
      final token = await TokenStorageService.getToken();
      final response = await http.get(
        Uri.parse('${ConstantUrls.mobilebaseServerUrl}customers/getByToken'),
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
        return CustomerModel.fromJson(responseBody);
      }

      throw Exception('Failed to authenticate with backend: ${response.statusCode} , body : ${response.body} ');
    } catch (error) {
      print('Google sign-in failed: $error');
      return null;
    }
  }

  static Future<CustomerModel?> createCustomer(String name, String address, String location) async {
    try {
      print('${ConstantUrls.mobilebaseServerUrl}customers/create');
      final token = await TokenStorageService.getToken();
      final response = await http.post(
        Uri.parse('${ConstantUrls.mobilebaseServerUrl}customers/create'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'name': name,
          'address': address,
          'location': location,
        }),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody == null) {
          return null;
        }
        return CustomerModel.fromJson(responseBody);
      }
      // print('Failed ${response.statusCode} , body : ${response.body} ');
      return null;
    } catch (error) {
      print('Customer creation failed: $error');
      return null;
    }
  }
}
