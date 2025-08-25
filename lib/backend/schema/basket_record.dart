import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasketRecord extends FirestoreRecord {
  BasketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  bool hasProduct() => _product != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _product = snapshotData['product'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('basket');

  static Stream<BasketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BasketRecord.fromSnapshot(s));

  static Future<BasketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BasketRecord.fromSnapshot(s));

  static BasketRecord fromSnapshot(DocumentSnapshot snapshot) => BasketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BasketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BasketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BasketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BasketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBasketRecordData({
  DocumentReference? product,
  int? quantity,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product': product,
      'quantity': quantity,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class BasketRecordDocumentEquality implements Equality<BasketRecord> {
  const BasketRecordDocumentEquality();

  @override
  bool equals(BasketRecord? e1, BasketRecord? e2) {
    return e1?.product == e2?.product &&
        e1?.quantity == e2?.quantity &&
        e1?.user == e2?.user;
  }

  @override
  int hash(BasketRecord? e) =>
      const ListEquality().hash([e?.product, e?.quantity, e?.user]);

  @override
  bool isValidKey(Object? o) => o is BasketRecord;
}
