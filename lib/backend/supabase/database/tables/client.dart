import '../database.dart';

class ClientTable extends SupabaseTable<ClientRow> {
  @override
  String get tableName => 'client';

  @override
  ClientRow createRow(Map<String, dynamic> data) => ClientRow(data);
}

class ClientRow extends SupabaseDataRow {
  ClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);
}
