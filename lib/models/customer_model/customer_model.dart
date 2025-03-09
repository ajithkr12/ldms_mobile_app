import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel {
  final String id;
  final String fullName;
  final String email;
  final String? location;
  final String? address;
  final int numberOfDevices;
  final DateTime createdAt;
  final bool isActive;
  final bool isAway;
  final bool isDeleted;
  final String registrationNumber;

  CustomerModel({
    required this.id,
    required this.fullName,
    required this.email,
    this.location,
    this.address,
    required this.numberOfDevices,
    required this.createdAt,
    required this.isActive,
    required this.isAway,
    required this.isDeleted,
    required this.registrationNumber,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}
