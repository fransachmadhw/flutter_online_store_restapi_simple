// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_store_restapi_simple/models/product.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetProductEvent>((event, emit) async {
      // TODO: implement event handler
      emit(ProductLoading());
      final response = await http.get(
        Uri.parse('https://api.escuelajs.co/api/v1/products?offset=0&limit=10'),
        headers: {
          "Content-Type": "application/json",
        },
      );
      emit(ProductSuccess(products: productFromJson(response.body)));
    });
  }
}
