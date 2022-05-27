part of 'productos_bloc.dart';

@immutable
abstract class ProductosEvent extends Equatable {
  const ProductosEvent();

  @override
  List<Object> get props => [];
}

class AddNewProduct extends ProductosEvent {
  const AddNewProduct();
}
