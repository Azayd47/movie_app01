import 'package:flutter/cupertino.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(), lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}
