
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'add_note_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit():super(NotesInitial());
}