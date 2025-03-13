import 'package:ldms_mobile_app/models/customer_model/customer_model.dart';

class OrderModel {
  final String? id;
  final String? customerId;
  final String? resourceType;
  final String? orderStatus;
  final DateTime? customerChosenTime;
  final DateTime? deliveredTime;
  final String? location;
  final String? deliveredBy;
  final DateTime? createdAt;
  final CustomerModel? customer;

  OrderModel({
    this.id,
    this.customerId,
    this.resourceType,
    this.orderStatus,
    this.customerChosenTime,
    this.deliveredTime,
    this.location,
    this.deliveredBy,
    this.createdAt,
    this.customer,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      customerId: json['customerId'],
      resourceType: json['resourceType'],
      orderStatus: json['orderStatus'],
      customerChosenTime: DateTime.parse(json['customerChosenTime']),
      deliveredTime: json['deliveredTime'] != null ? DateTime.parse(json['deliveredTime']) : null,
      location: json['location'] ?? "",
      deliveredBy: json['deliveredBy'] ?? "",
      createdAt: DateTime.parse(json['createdAt']),
      // customer: CustomerModel.fromJson(json['customer']) ?? null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customerId': customerId,
      'resourceType': resourceType,
      'orderStatus': orderStatus,
      'customerChosenTime': customerChosenTime?.toIso8601String(),
      'deliveredTime': deliveredTime?.toIso8601String(),
      'location': location,
      'deliveredBy': deliveredBy,
      'createdAt': createdAt?.toIso8601String(),
      'customer': customer?.toJson(),
    };
  }

  OrderModel copyWith({
    String? id,
    String? customerId,
    String? resourceType,
    String? orderStatus,
    DateTime? customerChosenTime,
    DateTime? deliveredTime,
    String? location,
    String? deliveredBy,
    DateTime? createdAt,
    CustomerModel? customer,
  }) {
    return OrderModel(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      resourceType: resourceType ?? this.resourceType,
      orderStatus: orderStatus ?? this.orderStatus,
      customerChosenTime: customerChosenTime ?? this.customerChosenTime,
      deliveredTime: deliveredTime ?? this.deliveredTime,
      location: location ?? this.location,
      deliveredBy: deliveredBy ?? this.deliveredBy,
      createdAt: createdAt ?? this.createdAt,
      customer: customer ?? this.customer,
    );
  }

  static List<OrderModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => OrderModel.fromJson(json)).toList();
  }
}
