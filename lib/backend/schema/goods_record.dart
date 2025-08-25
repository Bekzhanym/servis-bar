import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoodsRecord extends FirestoreRecord {
  GoodsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "stockStatus" field.
  String? _stockStatus;
  String get stockStatus => _stockStatus ?? '';
  bool hasStockStatus() => _stockStatus != null;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "articul" field.
  String? _articul;
  String get articul => _articul ?? '';
  bool hasArticul() => _articul != null;

  // "aboutproduct" field.
  String? _aboutproduct;
  String get aboutproduct => _aboutproduct ?? '';
  bool hasAboutproduct() => _aboutproduct != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _stockStatus = snapshotData['stockStatus'] as String?;
    _images = snapshotData['images'] as String?;
    _articul = snapshotData['articul'] as String?;
    _aboutproduct = snapshotData['aboutproduct'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goods');

  static Stream<GoodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoodsRecord.fromSnapshot(s));

  static Future<GoodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoodsRecord.fromSnapshot(s));

  static GoodsRecord fromSnapshot(DocumentSnapshot snapshot) => GoodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoodsRecordData({
  String? name,
  String? stockStatus,
  String? images,
  String? articul,
  String? aboutproduct,
  double? price,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'stockStatus': stockStatus,
      'images': images,
      'articul': articul,
      'aboutproduct': aboutproduct,
      'price': price,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoodsRecordDocumentEquality implements Equality<GoodsRecord> {
  const GoodsRecordDocumentEquality();

  @override
  bool equals(GoodsRecord? e1, GoodsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.stockStatus == e2?.stockStatus &&
        e1?.images == e2?.images &&
        e1?.articul == e2?.articul &&
        e1?.aboutproduct == e2?.aboutproduct &&
        e1?.price == e2?.price &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(GoodsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.stockStatus,
        e?.images,
        e?.articul,
        e?.aboutproduct,
        e?.price,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is GoodsRecord;
}
