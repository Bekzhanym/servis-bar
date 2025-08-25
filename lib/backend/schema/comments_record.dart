import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commentUser" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "commentText" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "createdtime" field.
  DateTime? _createdtime;
  DateTime? get createdtime => _createdtime;
  bool hasCreatedtime() => _createdtime != null;

  // "producttype" field.
  DocumentReference? _producttype;
  DocumentReference? get producttype => _producttype;
  bool hasProducttype() => _producttype != null;

  void _initializeFields() {
    _commentUser = snapshotData['commentUser'] as DocumentReference?;
    _commentText = snapshotData['commentText'] as String?;
    _createdtime = snapshotData['createdtime'] as DateTime?;
    _producttype = snapshotData['producttype'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? commentUser,
  String? commentText,
  DateTime? createdtime,
  DocumentReference? producttype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentUser': commentUser,
      'commentText': commentText,
      'createdtime': createdtime,
      'producttype': producttype,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.commentUser == e2?.commentUser &&
        e1?.commentText == e2?.commentText &&
        e1?.createdtime == e2?.createdtime &&
        e1?.producttype == e2?.producttype;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality()
      .hash([e?.commentUser, e?.commentText, e?.createdtime, e?.producttype]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
