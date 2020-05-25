part of 'docs_bloc.dart';

abstract class DocsEvent extends Equatable {
  const DocsEvent();
}

class LoadDocFor extends DocsEvent {
  final String docPageCode;
  final String docMenu;

  LoadDocFor(this.docPageCode, this.docMenu);

  @override
  List<Object> get props => [docPageCode, docMenu];
}
