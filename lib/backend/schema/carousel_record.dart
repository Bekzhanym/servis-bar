import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarouselRecord extends FirestoreRecord {
  CarouselRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "navigate_link" field.
  String? _navigateLink;
  String get navigateLink => _navigateLink ?? '';
  bool hasNavigateLink() => _navigateLink != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _navigateLink = snapshotData['navigate_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carousel');

  static Stream<CarouselRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarouselRecord.fromSnapshot(s));

  static Future<CarouselRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarouselRecord.fromSnapshot(s));

  static CarouselRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarouselRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarouselRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarouselRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarouselRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarouselRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarouselRecordData({
  String? name,
  String? image,
  String? navigateLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'navigate_link': navigateLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarouselRecordDocumentEquality implements Equality<CarouselRecord> {
  const CarouselRecordDocumentEquality();

  @override
  bool equals(CarouselRecord? e1, CarouselRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.navigateLink == e2?.navigateLink;
  }

  @override
  int hash(CarouselRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.navigateLink]);

  @override
  bool isValidKey(Object? o) => o is CarouselRecord;
}
