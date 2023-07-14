import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_demo_graphql/screens/home/models/user_detail_response.dart';
import 'package:github_demo_graphql/widgets/view/repository_card/repository_card.dart';

class UserProfile extends StatefulWidget {
  final User? userData;

  const UserProfile({
    super.key,
    this.userData,
  });

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          CircleAvatar(
            radius: 60.r,
            backgroundImage: CachedNetworkImageProvider(
              widget.userData?.avatarUrl ?? '',
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              widget.userData?.name ?? '',
              style: TextStyle(color: Colors.white, fontSize: 22.sp),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  child: Text(
                    'Followers : ${widget.userData?.followers?.totalCount.toString() ?? ''}',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  child: Text(
                    'Following : ${widget.userData?.following?.totalCount.toString() ?? ''}',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.r),
                    ),
                  ),
                  child: Text(
                    'Repositories : ${widget.userData?.repositories?.totalCount.toString() ?? ''}',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "All Repositories",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                Edges? repo = widget.userData?.repositories?.edges?[index];
                return Padding(
                  padding: EdgeInsets.all(8.w),
                  child: RepositoryCard(repository: repo),
                );
              },
              itemCount: int.parse(
                (widget.userData?.repositories?.totalCount ?? 0).toString(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
