import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_contact_bloc/models/contact_model.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const Initial([])) {
    on<ContactEvent>(
      (event, emit) async {
        emit(Loading(state.contacts));

        await Future.delayed(const Duration(milliseconds: 2000));

        final existingContact = [...state.contacts];

        if (event is CreateContact) {
          existingContact.add(event.contact);
          emit(Loaded(existingContact));
        }

        if (event is RemoveContact) {
          existingContact.remove(event.contact);
          emit(Loaded(existingContact));
        }

        if (event is FailedContact) {
          emit(Failed(state.contacts));
        }

        emit(Loaded(state.contacts));
      },
    );
  }
}
