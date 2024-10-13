import 'package:api_repository/api_repository.dart';
import 'package:instagram_clone/app/app.dart';
import 'package:instagram_clone/bootstrap.dart';
import 'package:instagram_clone/firebase_options_prod.dart';
import 'package:shared/shared.dart';

void main() {
  const apiRepository = ApiRepository();
  bootstrap(
    options: DefaultFirebaseOptions.currentPlatform,
    appFlavor: AppFlavor.production(),
    (powerSyncRepository) => const App(apiRepository: apiRepository),
  );
}
