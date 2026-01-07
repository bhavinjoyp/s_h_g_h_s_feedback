import '../database.dart';

class StaffFeedbackTable extends SupabaseTable<StaffFeedbackRow> {
  @override
  String get tableName => 'staff_feedback';

  @override
  StaffFeedbackRow createRow(Map<String, dynamic> data) =>
      StaffFeedbackRow(data);
}

class StaffFeedbackRow extends SupabaseDataRow {
  StaffFeedbackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StaffFeedbackTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get staffName => getField<String>('staff_name')!;
  set staffName(String value) => setField<String>('staff_name', value);

  String get department => getField<String>('department')!;
  set department(String value) => setField<String>('department', value);

  int? get criteria1 => getField<int>('criteria1');
  set criteria1(int? value) => setField<int>('criteria1', value);

  int? get criteria2 => getField<int>('criteria2');
  set criteria2(int? value) => setField<int>('criteria2', value);

  int? get criteria3 => getField<int>('criteria3');
  set criteria3(int? value) => setField<int>('criteria3', value);

  int? get criteria4 => getField<int>('criteria4');
  set criteria4(int? value) => setField<int>('criteria4', value);

  int? get criteria5 => getField<int>('criteria5');
  set criteria5(int? value) => setField<int>('criteria5', value);

  int? get criteria6 => getField<int>('criteria6');
  set criteria6(int? value) => setField<int>('criteria6', value);

  int? get criteria7 => getField<int>('criteria7');
  set criteria7(int? value) => setField<int>('criteria7', value);

  int? get criteria8 => getField<int>('criteria8');
  set criteria8(int? value) => setField<int>('criteria8', value);

  int? get criteria9 => getField<int>('criteria9');
  set criteria9(int? value) => setField<int>('criteria9', value);

  int? get criteria10 => getField<int>('criteria10');
  set criteria10(int? value) => setField<int>('criteria10', value);

  int? get criteria11 => getField<int>('criteria11');
  set criteria11(int? value) => setField<int>('criteria11', value);

  int? get criteria12 => getField<int>('criteria12');
  set criteria12(int? value) => setField<int>('criteria12', value);

  int? get criteria13 => getField<int>('criteria13');
  set criteria13(int? value) => setField<int>('criteria13', value);

  int? get criteria14 => getField<int>('criteria14');
  set criteria14(int? value) => setField<int>('criteria14', value);

  int? get criteria15 => getField<int>('criteria15');
  set criteria15(int? value) => setField<int>('criteria15', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  DateTime? get feedbackDate => getField<DateTime>('feedback_date');
  set feedbackDate(DateTime? value) =>
      setField<DateTime>('feedback_date', value);

  String? get classField => getField<String>('class');
  set classField(String? value) => setField<String>('class', value);
}
