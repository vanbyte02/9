import 'package:flutter/material.dart';
import 'package:flutter_application_2/Before_login/Home1.dart';
import 'HistoryOrders.dart';
import 'Cart.dart';
import 'Like.dart';
import 'Home.dart';
import 'modul/DataBase.dart';


//Экран Личного кабинета
class Account extends StatelessWidget {
  const Account ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Личный кабинет'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 170,
                  height: 240,
                  padding: const EdgeInsets.all(10),
                  child: Image.network(data[0].image, 
                  fit: BoxFit.cover),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                      height: 40, 
                      width: 220, 
                      color: const Color.fromARGB(255, 230, 230, 230,
                    ),
                    alignment: Alignment.center,
                       child: Text(data[0].name, 
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                            )
                          ),
                      ),
                      const SizedBox(height: 15),
                    Container(
                      height: 40,
                      width: 220,
                      color: const Color.fromARGB(255, 230, 230, 230,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                      data[0].phonenumber, 
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                          )
                        ),
                      ),
                      const SizedBox(height: 15),
                    Container(
                      height: 40,
                    width: 220, 
                    color: const Color.fromARGB(255, 230, 230, 230,
                    ),
                    alignment: Alignment.center,
                     child:  Text(
                      data[0].email, 
                     style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
               SizedBox(
                    height: 50, //высота
                    width: 230, //ширина
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 15, 184, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                child: const Text(
                  'История покупок',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16, 
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => OrderDetailsScreen(orderItems: orders),
                      )
                    );
                  },
                ),
               ),
            const SizedBox(height: 70),
            SizedBox(
                    height: 50, //высота
                    width: 170, //ширина
                    child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                child: const Text(
                  'Выход',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17, 
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home1()
                        ),
                      );
                    },
            ),
            ),
          ]
        ),
      ),
       bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.local_grocery_store,//Корзина
                color: Colors.black,
                size: 25,
                ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage(cartItems: cart)
               ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite_border,//Избранное
                color: Colors.red,
                size: 25,
                ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LikePage(likeItems: like)
               ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.home,//Гл.Экран
                color: Colors.black,
                size: 25,
                ),
             onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()
                          ),
                        );
                },
            ),
            IconButton(
              icon: const Icon(
                Icons.android,//Личный кабинет
                color: Colors.green,
                size: 25,
                ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
