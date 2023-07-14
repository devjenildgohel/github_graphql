import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_demo_graphql/screens/home/models/user_detail_response.dart';
import 'package:github_demo_graphql/service/graphql_queries.dart';
import 'package:github_demo_graphql/widgets/view/user_profile/user_profile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String searchValue = 'devjenildgohel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        backgroundColor: Colors.black,
        searchTextStyle: const TextStyle(color: Colors.white),
        searchCursorColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
        putActionsOnRight: true,
        title: const Text(
          'Github GraphQL',
          style: TextStyle(color: Colors.white),
        ),
        onSearch: (String value) {
          setState(() {
            searchValue =
                value.trim().isEmpty ? 'devjenildgohel' : value.trim();
          });
        },
      ),
      backgroundColor: Colors.black,
      body: Query(
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            );
          }
          if (result.hasException) {
            return Center(
              child: Text(
                "No user found !",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                ),
              ),
            );
          }
          UserDetailResponse userDetailResponse =
              UserDetailResponse.fromJson(result.data);

          var userData = userDetailResponse.user;
          return UserProfile(userData: userData);
        },
        options: QueryOptions(
          document: gql(GraphQLQueries.readRepositories),
          variables: {
            'login': searchValue,
          },
        ),
      ),
    );
  }
}
