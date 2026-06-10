import 'package:equatable/equatable.dart';

abstract class ForumEvent extends Equatable {
  const ForumEvent();

  @override
  List<Object> get props => [];
}

class LoadTopics extends ForumEvent {}

class AddTopic extends ForumEvent {
  final String title;

  const AddTopic(this.title);

  @override
  List<Object> get props => [title];
}
