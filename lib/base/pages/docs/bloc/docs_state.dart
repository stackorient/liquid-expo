part of 'docs_bloc.dart';

abstract class DocsState extends Equatable {
  const DocsState();
}

class DocsInitial extends DocsState {
  @override
  List<Object> get props => [];
}

class DocsLoading extends DocsState {
  @override
  List<Object> get props => [];
}

class DocsLoaded extends DocsState {
  final Widget docContent;
  final String docCode;

  DocsLoaded(this.docContent, this.docCode);

  @override
  List<Object> get props => [docContent];
}

class DocsError extends DocsState {
  final String errorMessage;

  DocsError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
