import 'package:api_repository/api_repository.dart';
import 'package:instagram_clone/app/app.dart';
import 'package:instagram_clone/bootstrap.dart';
import 'package:instagram_clone/firebase_options_dev.dart';
import 'package:shared/shared.dart';

void main() {
  const apiRepository = ApiRepository();
  bootstrap(
    options: DefaultFirebaseOptions.currentPlatform,
    appFlavor: AppFlavor.development(),
    (powerSyncRepository) => const App(apiRepository: apiRepository),
  );
}
