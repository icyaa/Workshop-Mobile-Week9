import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '/model/product.dart';

class Purchase extends GetxController{
  var products =<Product>[].obs;
  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(1, "Demo Product 1","Aby", 
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 2","Aby",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 3","Aby",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 4","Aby",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 5","Aby",
              "This is that we are going to show by getX", 100.0),
      Product(1, "Demo Product 6","Aby",
              "This is that we are going to show by getX", 100.0),
    ];
    products.value = serverResponse;
  }

}