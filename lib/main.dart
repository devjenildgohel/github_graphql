import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_demo_graphql/screens/home/home.dart';
import 'package:github_demo_graphql/service/graphql_client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

Future<void> main() async {
  await initHiveForFlutter();

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: GraphQLService().link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MyApp({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Home(),
        ),
      ),
    );
  }
}
