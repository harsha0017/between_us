import 'package:between_us/modules/draft_post/data/models/post.dart';
import 'package:between_us/modules/home/bloc/home_bloc.dart';
import 'package:flex_design/extensions/extensions.dart';
import 'package:flex_design/flex_design.dart';
import 'package:flex_design/widgets/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..start(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: _handleState,
        builder: (BuildContext context, HomeState state) {
          return Scaffold(
            appBar: AppBar(
              leading: FlexImage(
                const IconImageConfig(Icons.favorite),
                color: context.color.information.brand,
              ),
              actions: [
                FlexIconLinkButton(
                  const IconImageConfig(Icons.add),
                  onPressed: () async {
                    final result = await context.push('/post');
                    if (result == true && context.mounted) {
                      context.read<HomeBloc>().start();
                    }
                  },
                ),
              ],
            ),
            body: switch (state) {
              OnLoaded() => _PostsListView(posts: state.store.posts),
              OnException() => const FlexBodyH1('Aigoo'),
              _ => const Center(child: FlexCircularLoader()),
            },
          );
        },
      ),
    );
  }

  Future<void> _handleState(BuildContext context, HomeState state) async {
    switch (state) {
      case _:
        return;
    }
  }
}

class _PostsListView extends StatelessWidget {
  const _PostsListView({required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (_, i) => _PostCard(post: posts[i]),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(post.description),
        subtitle: Text(post.createdAt.toLocal().toString()),
        trailing: post.mediaUrl != null
            ? Image.network(
                post.mediaUrl!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              )
            : null,
      ),
    );
  }
}
