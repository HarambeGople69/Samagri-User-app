import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String uid;
  final String ownerUid;

  final String name;
  final String desc;
  final double price;
  final int rating;
  final String addedOn;
  final List url;
  final Timestamp timestamp;
  final List ratingUID;
  final int ratingNo;
  final List searchfrom;
  final List favorite;
  final String shop_name;

  ProductModel({
    required this.ownerUid,
    required this.shop_name,
    required this.favorite,
    required this.searchfrom,
    required this.ratingNo,
    required this.uid,
    required this.name,
    required this.desc,
    required this.price,
    required this.rating,
    required this.addedOn,
    required this.url,
    required this.timestamp,
    required this.ratingUID,
  });

  Map<String, dynamic> toMap() {
    return {
      "ownerUid": ownerUid,
      'uid': uid,
      'name': name,
      'desc': desc,
      'price': price,
      'rating': rating,
      'addedOn': addedOn,
      'url': url,
      'timestamp': timestamp,
      'ratingUID': ratingUID,
      'ratingNo': ratingNo,
      'favorite': favorite,
      "shop_name": shop_name
    };
  }

  factory ProductModel.fromMap(DocumentSnapshot map) {
    return ProductModel(
      ownerUid: map["ownerUid"] ?? '',
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      rating: map['rating']?.toInt() ?? 0,
      addedOn: map['addedOn'] ?? '',
      url: map['url'] ?? '',
      timestamp: map['timestamp'] ?? '',
      ratingUID: map['ratingUID'] ?? [],
      ratingNo: map['ratingNo'],
      searchfrom: map['searchfrom'] ?? [],
      favorite: map['favorite'] ?? [],
      shop_name: map['shop_name'] ?? '',
    );
  }
}
