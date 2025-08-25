import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  bool hasBirthday() => _birthday != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "saved_products" field.
  List<DocumentReference>? _savedProducts;
  List<DocumentReference> get savedProducts => _savedProducts ?? const [];
  bool hasSavedProducts() => _savedProducts != null;

  // "producrs_in_cart" field.
  List<DocumentReference>? _producrsInCart;
  List<DocumentReference> get producrsInCart => _producrsInCart ?? const [];
  bool hasProducrsInCart() => _producrsInCart != null;

  // "products_in_basket" field.
  List<DocumentReference>? _productsInBasket;
  List<DocumentReference> get productsInBasket => _productsInBasket ?? const [];
  bool hasProductsInBasket() => _productsInBasket != null;

  // "basket_price" field.
  double? _basketPrice;
  double get basketPrice => _basketPrice ?? 0.0;
  bool hasBasketPrice() => _basketPrice != null;

  // "quantity_in_orders" field.
  int? _quantityInOrders;
  int get quantityInOrders => _quantityInOrders ?? 0;
  bool hasQuantityInOrders() => _quantityInOrders != null;

  // "order" field.
  List<DocumentReference>? _order;
  List<DocumentReference> get order => _order ?? const [];
  bool hasOrder() => _order != null;

  // "address" field.
  List<String>? _address;
  List<String> get address => _address ?? const [];
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _birthday = snapshotData['birthday'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _savedProducts = getDataList(snapshotData['saved_products']);
    _producrsInCart = getDataList(snapshotData['producrs_in_cart']);
    _productsInBasket = getDataList(snapshotData['products_in_basket']);
    _basketPrice = castToType<double>(snapshotData['basket_price']);
    _quantityInOrders = castToType<int>(snapshotData['quantity_in_orders']);
    _order = getDataList(snapshotData['order']);
    _address = getDataList(snapshotData['address']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? birthday,
  String? gender,
  double? basketPrice,
  int? quantityInOrders,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'birthday': birthday,
      'gender': gender,
      'basket_price': basketPrice,
      'quantity_in_orders': quantityInOrders,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.birthday == e2?.birthday &&
        e1?.gender == e2?.gender &&
        listEquality.equals(e1?.savedProducts, e2?.savedProducts) &&
        listEquality.equals(e1?.producrsInCart, e2?.producrsInCart) &&
        listEquality.equals(e1?.productsInBasket, e2?.productsInBasket) &&
        e1?.basketPrice == e2?.basketPrice &&
        e1?.quantityInOrders == e2?.quantityInOrders &&
        listEquality.equals(e1?.order, e2?.order) &&
        listEquality.equals(e1?.address, e2?.address);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.birthday,
        e?.gender,
        e?.savedProducts,
        e?.producrsInCart,
        e?.productsInBasket,
        e?.basketPrice,
        e?.quantityInOrders,
        e?.order,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
