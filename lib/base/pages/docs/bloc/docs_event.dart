part of 'docs_bloc.dart';

abstract class DocsEvent extends Equatable {
  const DocsEvent();
}

class LoadDocFor extends DocsEvent {
  final String docPageCode;

  LoadDocFor(this.docPageCode);

  @override
  List<Object> get props => [docPageCode];
}
