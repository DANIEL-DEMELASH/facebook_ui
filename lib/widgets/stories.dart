import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class Stories extends StatelessWidget {
  const Stories({
    super.key,
    required this.currentUser,
    required this.stories,
  });

  final User currentUser;
  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: ((context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: _AddStoryCard(
                  currentUser: currentUser,
                ),
              );
            }
            final Story story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _StoryCard(
                story: story,
              ),
            );
          })),
    );
  }
}

class _AddStoryCard extends StatelessWidget {
  const _AddStoryCard({required this.currentUser});

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: currentUser.imageUrl,
            width: 110.0,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        // Container(
        //   height: double.infinity,
        //   width: 110.0,
        //   decoration: BoxDecoration(
        //       gradient: Palette.createRoomGradient,
        //       borderRadius: BorderRadius.circular(12.0)),
        // ),
        Positioned(
            top: 8.0,
            left: 8.0,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.add,
                  color: Palette.facebookBlue,
                ),
                iconSize: 30.0,
                onPressed: () => print('Add to Story'),
              ),
            )),
        const Positioned(
          right: 8.0,
          bottom: 8.0,
          left: 8.0,
          child: Text(
            'Add To Story',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({required this.story});

  final Story story;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: story.imageUrl,
            width: 110.0,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 8.0,
            left: 8.0,
            child: ProfileAvator(
              imageUrl: story.user.imageUrl,
              hasBorder: !story.isViewed,
            )),
        Positioned(
            right: 8.0,
            bottom: 8.0,
            left: 8.0,
            child: Text(
              story.user.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
