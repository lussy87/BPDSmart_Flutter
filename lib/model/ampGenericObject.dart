enum ObjectType {
  type_tabungan,
  type_deposito,
  type_giro,
  type_ebanking,
  type_kirimanUang,
}

class AMPGenericObject {
  String identifier = "";
  String name;
  String parentName;
  bool canBeExpanded = false;
  bool isExpanded = false;
  int level;
  int type;
  List<AMPGenericObject> children = <AMPGenericObject>[];
  ObjectType objectType;
}
