part of 'comments_bloc.dart';

abstract class CommentsState extends Equatable {
  const CommentsState();  

  @override
  List<Object> get props => [];
}
class CommentsInitial extends CommentsState {}
