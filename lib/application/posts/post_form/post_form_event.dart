part of 'post_form_bloc.dart';

@freezed
class PostFormEvent with _$PostFormEvent
{
  const factory PostFormEvent.initialized(Option<Post> intialPostOption) = _Initialized;
  const factory PostFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory PostFormEvent.optionChanged(String optionStr) = _OptionChanged;
  const factory PostFormEvent.nameChanged(String name) = _NameChanged;
  const factory PostFormEvent.saved() = _Saved;
}