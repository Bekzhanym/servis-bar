import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "orderid" field.
  int? _orderid;
  int get orderid => _orderid ?? 0;
  bool hasOrderid() => _orderid != null;

  // "totalprice" field.
  double? _totalprice;
  double get totalprice => _totalprice ?? 0.0;
  bool hasTotalprice() => _totalprice != null;

  // "product_in_orders_one" field.
  List<DocumentReference>? _productInOrdersOne;
  List<DocumentReference> get productInOrdersOne =>
      _productInOrdersOne ?? const [];
  bool hasProductInOrdersOne() => _productInOrdersOne != null;

  // "product_in_orders_two" field.
  List<DocumentReference>? _productInOrdersTwo;
  List<DocumentReference> get productInOrdersTwo =>
      _productInOrdersTwo ?? const [];
  bool hasProductInOrdersTwo() => _productInOrdersTwo != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "isactive" field.
  bool? _isactive;
  bool get isactive => _isactive ?? false;
  bool hasIsactive() => _isactive != null;

  // "when_client_get_order" field.
  DateTime? _whenClientGetOrder;
  DateTime? get whenClientGetOrder => _whenClientGetOrder;
  bool hasWhenClientGetOrder() => _whenClientGetOrder != null;

  void _initializeFields() {
    _orderDate = snapshotData['order_date'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _orderid = castToType<int>(snapshotData['orderid']);
    _totalprice = castToType<double>(snapshotData['totalprice']);
    _productInOrdersOne = getDataList(snapshotData['product_in_orders_one']);
    _productInOrdersTwo = getDataList(snapshotData['product_in_orders_two']);
    _status = snapshotData['status'] as String?;
    _isactive = snapshotData['isactive'] as bool?;
    _whenClientGetOrder = snapshotData['when_client_get_order'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? orderDate,
  DocumentReference? user,
  int? orderid,
  double? totalprice,
  String? status,
  bool? isactive,
  DateTime? whenClientGetOrder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'order_date': orderDate,
      'user': user,
      'orderid': orderid,
      'totalprice': totalprice,
      'status': status,
      'isactive': isactive,
      'when_client_get_order': whenClientGetOrder,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderDate == e2?.orderDate &&
        e1?.user == e2?.user &&
        e1?.orderid == e2?.orderid &&
        e1?.totalprice == e2?.totalprice &&
        listEquality.equals(e1?.productInOrdersOne, e2?.productInOrdersOne) &&
        listEquality.equals(e1?.productInOrdersTwo, e2?.productInOrdersTwo) &&
        e1?.status == e2?.status &&
        e1?.isactive == e2?.isactive &&
        e1?.whenClientGetOrder == e2?.whenClientGetOrder;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderDate,
        e?.user,
        e?.orderid,
        e?.totalprice,
        e?.productInOrdersOne,
        e?.productInOrdersTwo,
        e?.status,
        e?.isactive,
        e?.whenClientGetOrder
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
