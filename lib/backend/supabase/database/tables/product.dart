import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
