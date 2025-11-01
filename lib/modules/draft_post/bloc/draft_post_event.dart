part of 'draft_post_bloc.dart';

sealed class DraftPostEvent {}

class Start extends DraftPostEvent {}

class Submit extends DraftPostEvent {
  Submit({required this.postEntry});

  final PostEntry postEntry;
}
