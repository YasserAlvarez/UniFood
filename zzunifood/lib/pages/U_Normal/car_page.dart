// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import '../Global/routes.dart';

class CarPage extends StatefulWidget {
  CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {

  @override
  Widget build(BuildContext context) {
    final Map userArg = ModalRoute.of(context)!.settings.arguments as Map;
    Map products = userArg['products'];
    int total = 0;

    if(products.isNotEmpty){
      for (var i = 0; i < products.length; i++) {
        int product = products['${i+1}']['precio'] * products['${i+1}']['cantidad'];
        total = total + product;
      }
    }

    /*
    void agregarCarrito() {
      for (var i = 0; i < contadores.length; i++) {
        if (contadores[i] > 0) {
          Map<String, dynamic> nuevosDatos = {
            '${_userArg['products'].length+1}': {
              'nombre': _nombre,
              'nombrevar': _variaciones['variacion${i+1}'],
              'precio': _precio,
              'cantidad': contadores[i],
              'imagen': _imagen,
            }
          };
          _userArg['products'].addAll(nuevosDatos);
          Navigator.pop(context);
        }
      }
    }
    */


/*
    Future<Map> agregarCarrito() async {
      if(userArg['products'].length>0){

        Map products = await getAllMenu();

        if (products.isNotEmpty){
            int num = 1;
            for (var i = 1; i <= userArg.length+1; i++) {
              for (var o = 1; o < products['producto$i']['variaciones'].length+1; o++) {
                if(userArg['products']['${products['producto$i']['nombre']}_$o'] != null){
                  Map newproduct = {
                    '$num': {
                      'nombre': userArg['products']['${products['producto$i']['nombre']}_$o']['nombre'],
                      'nombrevar': userArg['products']['${products['producto$i']['nombre']}_$o']['nombrevar'],
                      'precio': userArg['products']['${products['producto$i']['nombre']}_$o']['precio'],
                      'cantidad': userArg['products']['${products['producto$i']['nombre']}_$o']['cantidad'],
                      'imagen': userArg['products']['${products['producto$i']['nombre']}_$o']['imagen'],
                    }
                  };
                  
                  num++;
                }
              }
            }
          }
        return products;
      }
      return userArg['products'];
    }
*/
    //products.addAll(agregarCarrito());
    //print(products.length);

    return Scaffold(
      backgroundColor: Color(color_6),

      appBar: AppBar(
          backgroundColor: Color(color_1),
          elevation: 1,
          
          leading: IconButton(
                onPressed: (){
                  _onPressBtnUser(userArg);
                },
                icon: const Icon(Icons.person),
                iconSize: 40,
                color: Color(color_2),
              ),
              
          actions: <Widget> [
            IconButton(
              onPressed: (){
                _onPressBtnCar(userArg);
              },
              icon: const Icon(Icons.shopping_cart),
              iconSize: 40,
              color: Color(color_2),
            ),
          ],
          
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo_global.png",
                width: 200,
              ),
            ],
          ),
        ),

      body: Center(
        child: ListView (
          shrinkWrap: false,
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
          children: [
            products.isNotEmpty
            ? Column(
              children: [

                Card_Car(
                      userArg: userArg,
                      products: products,
                      total: total
                    ),
/*
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Card_Car(
                      userArg: userArg,
                      products: products,
                      total: total
                    );
                    
                    /*Card(
                      //elevation: 10,
                      //color: Color(color_5),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Expanded(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${products['${index+1}']['nombre']} ${products['${index+1}']['nombrevar']}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Color(color_4)
                                                ),
                                              ),
                                            ]
                                          ),
                                        ],
                                      ),
                                    ),

                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Color(color_5)
                                      ),
                                      child:
                                      FadeInImage(
                                        placeholder: AssetImage(loadingDefault),
                                        image: NetworkImage('${products['${index+1}']['imagen']}'),
                                      )
                                    ),

                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      width: 100,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(color_5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'MX\$ ${products['${index+1}']['precio']}',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(color_5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [

                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(color_8),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.remove,
                                              color: Color(color_4),
                                              size: 15,
                                            ),
                                            onPressed: () {
                                              _decCounter(index, products['${index+1}']['precio']);
                                            },
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 0),
                                          child: Text(
                                            '${contadores[index]}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                              ),
                                          ),
                                        ),

                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(color_7),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              color: Color(color_4),
                                              size: 15,
                                            ),
                                            onPressed: () {
                                              _incCounter(index, products['${index+1}']['precio']);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  ],
                                ),

                              ],
                            )
                          ),
                        ]
                      ),
                    );*/
                    
                  },
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                ),
*/
                /*Card(
                  //elevation: 10,
                  //color: Color(color_5),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.price_change_sharp,
                                        size: 60,
                                        color: Color(color_7),
                                      ),
                                      const VerticalDivider(),
                                      Text("MX\$ $total"),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(color_8), Color(color_7)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      foregroundColor: Color(color_4),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text("Ordenar",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        )
                      ),
                    ]
                  ),
                ),
                */
              ],
            )
            : Card_Carrito_Vacio(),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color(color_1),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              IconButton(
                onPressed: (){
                  _onPressBtnHome(userArg);
                },
                icon: const Icon(Icons.home),
                color: Color(color_2),
                iconSize: 40,
              ),
              IconButton(
                onPressed:  (){
                  _onPressBtnMenu(userArg);
                },
                icon: const Icon(Icons.restaurant),
                color: Color(color_2),
                iconSize: 40,
              ),
              IconButton(
                onPressed:  (){
                  _onPressBtnPedidos(userArg);
                },
                icon: const Icon(Icons.edit_document),
                color: Color(color_2),
                iconSize: 40,
              ),
            ],
          ),
          
        ),
      ),

    );
  }

/*
  void _incrementCounter() {
    setState(() {
      _counter++;
      print('+ pressed');
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter > 0){
        _counter--;
      }
      print('- pressed');
    });
  }
*/

  void _onPressBtnUser(userArg) {
    print("Boton User");
    Navigator.pop(context);
    Navigator.of(context).pushNamed("/profile", arguments: userArg);
  }
  void _onPressBtnCar(userArg) {
    print("Boton Carrito");
    Navigator.pop(context);
    Navigator.of(context).pushNamed("/car", arguments: userArg);
  }
  void _onPressBtnHome(userArg) {
    print("Boton Home");
    Navigator.pop(context);
    Navigator.of(context).pushNamed("/home", arguments: userArg);
  }
  void _onPressBtnMenu(userArg) {
    print("Boton Menu");
    Navigator.pop(context);
    Navigator.of(context).pushNamed("/menu", arguments: userArg);
  }
  void _onPressBtnPedidos(userArg) {
    print("Boton Pedidos");
    Navigator.pop(context);
    Navigator.of(context).pushNamed("/order", arguments: userArg);
  }

}