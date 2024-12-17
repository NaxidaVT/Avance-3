import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedItemsRecord extends FirestoreRecord {
  SelectedItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "item" field.
  DocumentReference? _item;
  DocumentReference? get item => _item;
  bool hasItem() => _item != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "cart" field.
  DocumentReference? _cart;
  DocumentReference? get cart => _cart;
  bool hasCart() => _cart != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _item = snapshotData['item'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _cart = snapshotData['cart'] as DocumentReference?;
    _creator = snapshotData['creator'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedItems');

  static Stream<SelectedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedItemsRecord.fromSnapshot(s));

  static Future<SelectedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedItemsRecord.fromSnapshot(s));

  static SelectedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedItemsRecordData({
  String? name,
  String? description,
  double? price,
  DocumentReference? item,
  String? image,
  double? subTotal,
  DocumentReference? cart,
  DocumentReference? creator,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'item': item,
      'image': image,
      'subTotal': subTotal,
      'cart': cart,
      'creator': creator,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectedItemsRecordDocumentEquality
    implements Equality<SelectedItemsRecord> {
  const SelectedItemsRecordDocumentEquality();

  @override
  bool equals(SelectedItemsRecord? e1, SelectedItemsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.item == e2?.item &&
        e1?.image == e2?.image &&
        e1?.subTotal == e2?.subTotal &&
        e1?.cart == e2?.cart &&
        e1?.creator == e2?.creator;
  }

  @override
  int hash(SelectedItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.item,
        e?.image,
        e?.subTotal,
        e?.cart,
        e?.creator
      ]);

  @override
  bool isValidKey(Object? o) => o is SelectedItemsRecord;
}
