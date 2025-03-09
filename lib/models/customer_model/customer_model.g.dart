// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      location: json['location'] as String?,
      address: json['address'] as String?,
      numberOfDevices: (json['numberOfDevices'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isActive: json['isActive'] as bool,
      isAway: json['isAway'] as bool,
      isDeleted: json['isDeleted'] as bool,
      registrationNumber: json['registrationNumber'] as String,
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'location': instance.location,
      'address': instance.address,
      'numberOfDevices': instance.numberOfDevices,
      'createdAt': instance.createdAt.toIso8601String(),
      'isActive': instance.isActive,
      'isAway': instance.isAway,
      'isDeleted': instance.isDeleted,
      'registrationNumber': instance.registrationNumber,
    };
