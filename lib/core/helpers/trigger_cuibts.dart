import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('${ConsoleColors.green}Cubit created: ${bloc.runtimeType}${ConsoleColors.reset}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${ConsoleColors.blue}Change in ${bloc.runtimeType}: $change${ConsoleColors.reset}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('${ConsoleColors.red}Cubit closed: ${bloc.runtimeType}${ConsoleColors.reset}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('${ConsoleColors.yellow}Error in ${bloc.runtimeType}: $error${ConsoleColors.reset}');
  }
}

class ConsoleColors {
  static const String reset = '\x1B[0m'; // إعادة الضبط إلى اللون الافتراضي
  static const String black = '\x1B[30m';
  static const String red = '\x1B[31m';
  static const String green = '\x1B[32m';
  static const String yellow = '\x1B[33m';
  static const String blue = '\x1B[34m';
  static const String magenta = '\x1B[35m';
  static const String cyan = '\x1B[36m';
  static const String white = '\x1B[37m';
}
