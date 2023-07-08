import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'BREATHE_LONDON_KEY', obfuscate: true)
  static final String breatheLondonApiKey = _Env.breatheLondonApiKey;
}
