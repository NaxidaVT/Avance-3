import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccesoriosRecord extends FirestoreRecord {
  AccesoriosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Cobertoresdevolantes" field.
  String? _cobertoresdevolantes;
  String get cobertoresdevolantes => _cobertoresdevolantes ?? '';
  bool hasCobertoresdevolantes() => _cobertoresdevolantes != null;

  // "Ganchosjdm" field.
  String? _ganchosjdm;
  String get ganchosjdm => _ganchosjdm ?? '';
  bool hasGanchosjdm() => _ganchosjdm != null;

  // "LucesLed" field.
  String? _lucesLed;
  String get lucesLed => _lucesLed ?? '';
  bool hasLucesLed() => _lucesLed != null;

  // "MarcosdePlacas" field.
  String? _marcosdePlacas;
  String get marcosdePlacas => _marcosdePlacas ?? '';
  bool hasMarcosdePlacas() => _marcosdePlacas != null;

  // "Parlantes" field.
  String? _parlantes;
  String get parlantes => _parlantes ?? '';
  bool hasParlantes() => _parlantes != null;

  // "Pomos" field.
  String? _pomos;
  String get pomos => _pomos ?? '';
  bool hasPomos() => _pomos != null;

  // "Radiadores" field.
  String? _radiadores;
  String get radiadores => _radiadores ?? '';
  bool hasRadiadores() => _radiadores != null;

  // "Volantesdeportivos" field.
  String? _volantesdeportivos;
  String get volantesdeportivos => _volantesdeportivos ?? '';
  bool hasVolantesdeportivos() => _volantesdeportivos != null;

  void _initializeFields() {
    _cobertoresdevolantes = snapshotData['Cobertoresdevolantes'] as String?;
    _ganchosjdm = snapshotData['Ganchosjdm'] as String?;
    _lucesLed = snapshotData['LucesLed'] as String?;
    _marcosdePlacas = snapshotData['MarcosdePlacas'] as String?;
    _parlantes = snapshotData['Parlantes'] as String?;
    _pomos = snapshotData['Pomos'] as String?;
    _radiadores = snapshotData['Radiadores'] as String?;
    _volantesdeportivos = snapshotData['Volantesdeportivos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Accesorios');

  static Stream<AccesoriosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccesoriosRecord.fromSnapshot(s));

  static Future<AccesoriosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccesoriosRecord.fromSnapshot(s));

  static AccesoriosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccesoriosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccesoriosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccesoriosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccesoriosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccesoriosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccesoriosRecordData({
  String? cobertoresdevolantes,
  String? ganchosjdm,
  String? lucesLed,
  String? marcosdePlacas,
  String? parlantes,
  String? pomos,
  String? radiadores,
  String? volantesdeportivos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cobertoresdevolantes': cobertoresdevolantes,
      'Ganchosjdm': ganchosjdm,
      'LucesLed': lucesLed,
      'MarcosdePlacas': marcosdePlacas,
      'Parlantes': parlantes,
      'Pomos': pomos,
      'Radiadores': radiadores,
      'Volantesdeportivos': volantesdeportivos,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccesoriosRecordDocumentEquality implements Equality<AccesoriosRecord> {
  const AccesoriosRecordDocumentEquality();

  @override
  bool equals(AccesoriosRecord? e1, AccesoriosRecord? e2) {
    return e1?.cobertoresdevolantes == e2?.cobertoresdevolantes &&
        e1?.ganchosjdm == e2?.ganchosjdm &&
        e1?.lucesLed == e2?.lucesLed &&
        e1?.marcosdePlacas == e2?.marcosdePlacas &&
        e1?.parlantes == e2?.parlantes &&
        e1?.pomos == e2?.pomos &&
        e1?.radiadores == e2?.radiadores &&
        e1?.volantesdeportivos == e2?.volantesdeportivos;
  }

  @override
  int hash(AccesoriosRecord? e) => const ListEquality().hash([
        e?.cobertoresdevolantes,
        e?.ganchosjdm,
        e?.lucesLed,
        e?.marcosdePlacas,
        e?.parlantes,
        e?.pomos,
        e?.radiadores,
        e?.volantesdeportivos
      ]);

  @override
  bool isValidKey(Object? o) => o is AccesoriosRecord;
}
