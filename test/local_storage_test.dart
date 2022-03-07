import 'package:dependency_inversion/core/local_storage/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesMock extends Mock implements SharedPreferences {}

void main() {
  late ILocalStorage localStorage;
  late SharedPreferencesMock preferencesMock;

  setUp(() {
    preferencesMock = SharedPreferencesMock();
    localStorage = LocalStorage(preferences: preferencesMock);
  });

  test(
    'should test get string',
    () {
      when(preferencesMock.getString('title')).thenReturn('title app');

      final title = localStorage.getString(key: 'title');

      expect(title, 'title app');
    },
  );
  test(
    'should test get bool',
    () {
      when(preferencesMock.getBool('user logged')).thenReturn(true);

      final userLogged = localStorage.getBool(key: 'user logged');

      expect(userLogged, true);
    },
  );
}
