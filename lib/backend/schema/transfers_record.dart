import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransfersRecord extends FirestoreRecord {
  TransfersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "when" field.
  PartOfDay? _when;
  PartOfDay? get when => _when;
  bool hasWhen() => _when != null;

  // "where" field.
  Points? _where;
  Points? get where => _where;
  bool hasWhere() => _where != null;

  // "reserved" field.
  bool? _reserved;
  bool get reserved => _reserved ?? false;
  bool hasReserved() => _reserved != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "upadted_at" field.
  DateTime? _upadtedAt;
  DateTime? get upadtedAt => _upadtedAt;
  bool hasUpadtedAt() => _upadtedAt != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _day = snapshotData['day'] as DateTime?;
    _when = deserializeEnum<PartOfDay>(snapshotData['when']);
    _where = deserializeEnum<Points>(snapshotData['where']);
    _reserved = snapshotData['reserved'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _upadtedAt = snapshotData['upadted_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transfers');

  static Stream<TransfersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransfersRecord.fromSnapshot(s));

  static Future<TransfersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransfersRecord.fromSnapshot(s));

  static TransfersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransfersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransfersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransfersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransfersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransfersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransfersRecordData({
  DocumentReference? user,
  DateTime? day,
  PartOfDay? when,
  Points? where,
  bool? reserved,
  DateTime? createdAt,
  DateTime? upadtedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'day': day,
      'when': when,
      'where': where,
      'reserved': reserved,
      'created_at': createdAt,
      'upadted_at': upadtedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransfersRecordDocumentEquality implements Equality<TransfersRecord> {
  const TransfersRecordDocumentEquality();

  @override
  bool equals(TransfersRecord? e1, TransfersRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.day == e2?.day &&
        e1?.when == e2?.when &&
        e1?.where == e2?.where &&
        e1?.reserved == e2?.reserved &&
        e1?.createdAt == e2?.createdAt &&
        e1?.upadtedAt == e2?.upadtedAt;
  }

  @override
  int hash(TransfersRecord? e) => const ListEquality().hash([
        e?.user,
        e?.day,
        e?.when,
        e?.where,
        e?.reserved,
        e?.createdAt,
        e?.upadtedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is TransfersRecord;
}
