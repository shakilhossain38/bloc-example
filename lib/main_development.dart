import 'package:my_app/app/app.dart';
import 'package:my_app/bootstrap.dart';
import 'package:my_app/config/development.dart';

void main() {
  bootstrap(() => const App(), Development());
}
