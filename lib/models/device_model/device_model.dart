// import 'package:flutter/foundation.dart';

class UserRegisteredDevice {
  final String id;
  final String customerId;
  final String name;
  final String type;
  final String serialNumber;
  final bool isActive;
  final DateTime createdAt;

  UserRegisteredDevice({
    required this.id,
    required this.customerId,
    required this.name,
    required this.type,
    required this.serialNumber,
    required this.isActive,
    required this.createdAt,
  });

  // Factory constructor to create an instance from JSON
  factory UserRegisteredDevice.fromJson(Map<String, dynamic> json) {
    return UserRegisteredDevice(
      id: json['id'],
      customerId: json['customerId'],
      name: json['name'],
      type: json['type'],
      serialNumber: json['serialNumber'],
      isActive: json['isActive'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customerId': customerId,
      'name': name,
      'type': type,
      'serialNumber': serialNumber,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
