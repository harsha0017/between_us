import 'dart:io';

import 'package:between_us/app/services/media_picker.dart';
import 'package:between_us/modules/draft_post/bloc/draft_post_bloc.dart';
import 'package:between_us/modules/draft_post/domain/models/post_entry.dart';
import 'package:flex_design/extensions/extensions.dart';
import 'package:flex_design/flex_design.dart';
import 'package:flex_design/widgets/gap/flex_gap.dart';
import 'package:flex_design/widgets/inputs/inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DraftPostScreen extends StatefulWidget {
  DraftPostScreen({super.key});

  @override
  State<DraftPostScreen> createState() => _DraftPostScreenState();
}

class _DraftPostScreenState extends State<DraftPostScreen> {
  final _descController = TextEditingController();
  File? _media;

  Future<void> _chooseMedia() async {
    final picker = MediaPicker();

    final choice = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () => Navigator.pop(context, 'gallery'),
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a Photo'),
              onTap: () => Navigator.pop(context, 'camera'),
            ),
          ],
        ),
      ),
    );

    if (choice == null) return;

    final file = await picker.pickMedia(fromCamera: choice == 'camera');
    if (file != null) {
      setState(() => _media = file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DraftPostBloc()..start(),
      child: BlocConsumer<DraftPostBloc, DraftPostState>(
        listener: _handleState,
        builder: (BuildContext context, DraftPostState state) {
          return Scaffold(
            backgroundColor: context.color.background.primary,
            appBar: AppBar(
              title: const FlexTitleH1.medium('Create Post'),
              leading: GestureDetector(
                child: const FlexImage(IconImageConfig(Icons.arrow_back)),
                onTap: () {
                  context.pop();
                },
              ),
              actions: [
                FlexIconLinkButton(
                  const IconImageConfig(Icons.send),
                  onPressed: () {
                    context.read<DraftPostBloc>().add(
                      Submit(
                        postEntry: PostEntry(
                          description: _descController.text,
                          media: _media,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.all(
                  context.i(context.padding.comfortable),
                ),
                child: Column(
                  children: [
                    FlexCard(
                      padding: EdgeInsets.all(
                        context.i(context.padding.comfortable),
                      ),
                      border: Border.all(
                        color: context.color.information.secondaryInverse,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FlexBodyLarge.bold(
                            'Capture Your Thoughts',
                            textAlign: TextAlign.left,
                          ),
                          FlexGap.grouped(),
                          TextFieldInput(
                            controller: _descController,
                            hintText: "What's on your mind today?",
                          ),
                        ],
                      ),
                    ),
                    FlexGap.unrelated(),
                    FlexCard(
                      padding: EdgeInsets.all(
                        context.i(context.padding.comfortable),
                      ),
                      border: Border.all(
                        color: context.color.information.secondaryInverse,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_media != null)
                            Image.file(_media!, height: 150, fit: BoxFit.cover)
                          else
                            Container(
                              height: 150,
                              color: context.color.background.primary,
                            ),

                          FlexGap.related(),
                          FlexPrimaryButton(
                            'Upload Photo',
                            onPressed: _chooseMedia,
                            leading: const IconImageConfig(Icons.camera_alt),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _handleState(BuildContext context, DraftPostState state) async {
    switch (state) {
      case OnSubmit _:
        context.pop(true);
      case _:
        return;
    }
  }
}
