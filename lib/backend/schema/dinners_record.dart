import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DinnersRecord extends FirestoreRecord {
  DinnersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "reserved" field.
  bool? _reserved;
  bool get reserved => _reserved ?? false;
  bool hasReserved() => _reserved != null;

  // "served" field.
  bool? _served;
  bool get served => _served ?? false;
  bool hasServed() => _served != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _day = snapshotData['day'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _reserved = snapshotData['reserved'] as bool?;
    _served = snapshotData['served'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dinners');

  static Stream<DinnersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DinnersRecord.fromSnapshot(s));

  static Future<DinnersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DinnersRecord.fromSnapshot(s));

  static DinnersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DinnersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DinnersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DinnersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DinnersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DinnersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDinnersRecordData({
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? day,
  DocumentReference? user,
  String? name,
  bool? reserved,
  bool? served,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'updated_at': updatedAt,
      'day': day,
      'user': user,
      'name': name,
      'reserved': reserved,
      'served': served,
    }.withoutNulls,
  );

  return firestoreData;
}

class DinnersRecordDocumentEquality implements Equality<DinnersRecord> {
  const DinnersRecordDocumentEquality();

  @override
  bool equals(DinnersRecord? e1, DinnersRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.day == e2?.day &&
        e1?.user == e2?.user &&
        e1?.reserved == e2?.reserved &&
        e1?.served == e2?.served;
  }

  @override
  int hash(DinnersRecord? e) => const ListEquality().hash(
      [e?.createdAt, e?.updatedAt, e?.day, e?.user, e?.reserved, e?.served]);

  @override
  bool isValidKey(Object? o) => o is DinnersRecord;
}
