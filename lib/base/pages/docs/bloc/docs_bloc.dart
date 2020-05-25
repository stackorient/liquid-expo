import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../docs_pages/page_fetcher.dart';

part 'docs_event.dart';
part 'docs_state.dart';

class DocsBloc extends Bloc<DocsEvent, DocsState> {
  @override
  DocsState get initialState => DocsInitial();

  @override
  Stream<DocsState> mapEventToState(
    DocsEvent event,
  ) async* {
    if (event is LoadDocFor) {
      yield DocsLoading();

      final Widget page = getPage(event.docPageCode);

      if (page != null)
        yield DocsLoaded(page, event.docPageCode, event.docMenu);
      else
        yield DocsError("Some error occured");
    }
  }
}
