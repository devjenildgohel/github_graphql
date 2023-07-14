import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_demo_graphql/screens/home/models/user_detail_response.dart';
import 'package:github_demo_graphql/service/graphql_mutations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RepositoryCard extends StatefulWidget {
  final Edges? repository;

  const RepositoryCard({
    super.key,
    this.repository,
  });

  @override
  State<RepositoryCard> createState() => _RepositoryCardState();
}

class _RepositoryCardState extends State<RepositoryCard> {
  ValueNotifier<bool>? hasStarred;

  @override
  void initState() {
    super.initState();
    hasStarred =
        ValueNotifier(widget.repository?.node?.viewerHasStarred as bool);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      child: ValueListenableBuilder(
        valueListenable: hasStarred!,
        builder: (context, value, _) {
          return Row(
            children: [
              Icon(CupertinoIcons.book_circle_fill, size: 24.sp),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  '${widget.repository?.node?.name}',
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Mutation(
                options: MutationOptions(
                  document: value == true
                      ? gql(GraphQLMutations.removeStar)
                      : gql(GraphQLMutations.addStar),
                  onCompleted: (resultData) {
                    hasStarred?.value =
                        resultData?[!value ? 'addStar' : 'removeStar']
                            ['starrable']['viewerHasStarred'] as bool;
                  },
                ),
                builder: (MultiSourceResult<Object?> Function(
                            Map<String, dynamic>,
                            {Object? optimisticResult})
                        runMutation,
                    QueryResult<Object?>? result) {
                  return InkWell(
                    onTap: () {
                      runMutation({'starrableId': widget.repository?.node?.id});
                    },
                    child: Icon(
                      value == true
                          ? CupertinoIcons.star_fill
                          : CupertinoIcons.star,
                      size: 26.sp,
                      color: hasStarred?.value == true
                          ? Colors.yellow
                          : Colors.black,
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
