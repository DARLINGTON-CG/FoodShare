part of 'post_form_bloc.dart';

@freezed
class PostFormEvent with _$PostFormEvent
{
  const factory PostFormEvent.initialized() = _Initialized;
  const factory PostFormEvent.descriptionChanged(String description) = _DescriptionChanged;
  const factory PostFormEvent.quantityChanged(int quantity) = _QuantityChanged;
  const factory PostFormEvent.titleChanged(String title) = _TitleChanged;
  const factory PostFormEvent.saved() = _Saved;
}