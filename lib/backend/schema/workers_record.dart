import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkersRecord extends FirestoreRecord {
  WorkersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workers');

  static Stream<WorkersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkersRecord.fromSnapshot(s));

  static Future<WorkersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkersRecord.fromSnapshot(s));

  static WorkersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkersRecordData({
  String? email,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkersRecordDocumentEquality implements Equality<WorkersRecord> {
  const WorkersRecordDocumentEquality();

  @override
  bool equals(WorkersRecord? e1, WorkersRecord? e2) {
    return e1?.email == e2?.email && e1?.name == e2?.name;
  }

  @override
  int hash(WorkersRecord? e) => const ListEquality().hash([e?.email, e?.name]);

  @override
  bool isValidKey(Object? o) => o is WorkersRecord;
}
