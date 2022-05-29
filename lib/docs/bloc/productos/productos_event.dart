part of 'productos_bloc.dart';

@immutable
abstract class ProductosEvent extends Equatable {
  const ProductosEvent();

  @override
  List<Object> get props => [];
}

class AddNewProductEvent extends ProductosEvent {
  const AddNewProductEvent() : super();
}
