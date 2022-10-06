part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  final ContactModel contact;
  const ContactEvent(this.contact);

  @override
  List<Object?> get props => [];
}

class CreateContact extends ContactEvent {
  const CreateContact(super.contact);
}

class RemoveContact extends ContactEvent {
  const RemoveContact(super.contact);
}

class FailedContact extends ContactEvent {
  const FailedContact(super.contact);
}
