part of 'post_form_bloc.dart';

@freezed
class PostFormEvent with _$PostFormEvent
{
  const factory PostFormEvent.initialized(Option<Post> initialPostOption) = Initialized;
  const factory PostFormEvent.amountChanged(String amountChanged) = AmountChanged;
  const factory PostFormEvent.descriptionChanged(String description) = DescriptionChanged;
  const factory PostFormEvent.pickupTimeChanged(String pickupTime) = PickupTimeChanged;
  const factory PostFormEvent.quantityChanged(int quantity) = QuantityChanged;
  const factory PostFormEvent.titleChanged(String title) = TitleChanged;
  const factory PostFormEvent.saved(File? image) = Saved;
}