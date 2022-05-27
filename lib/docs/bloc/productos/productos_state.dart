part of 'productos_bloc.dart';

@immutable
abstract class ProductosState extends Equatable {
  const ProductosState(
      {this.newProducts = const [{}],
      this.bestProducts = const [{}],
      this.discountProducts = const [{}]});

  final List<Map<String, dynamic>> newProducts;
  final List<Map<String, dynamic>> bestProducts;
  final List<Map<String, dynamic>> discountProducts;

  @override
  List<Object> get props => [];
}

class ProductosInitialState extends ProductosState {
  const ProductosInitialState() : super();
}
