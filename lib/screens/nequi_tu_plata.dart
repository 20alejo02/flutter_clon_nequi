import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';

class Nequituplata extends StatefulWidget {
  @override
  _NequituplataState createState() => _NequituplataState();
}

class _NequituplataState extends State<Nequituplata> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 11, 37),
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          // Contenido principal, con los textos y los botones
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Así está tu plata',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Toda tu plata suma',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$107.688,86',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Tarjetas de saldo con tamaño personalizado y espacio
                BalanceCard(
                  title: 'Disponible',
                  amount: '\$63.688,86',
                  icon: Icons.account_balance_wallet,
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                  height: 85,
                ),
                BalanceCard(
                  title: 'Bolsillos',
                  amount: '\$44.000,00',
                  icon: Icons.savings,
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                  height: 85,
                  trailingIcon: Icons.arrow_forward,
                ),
                BalanceCard(
                  title: 'Colchón',
                  amount: '\$0,00',
                  icon: Icons.king_bed,
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                  height: 85,
                  trailingIcon: Icons.arrow_forward,
                ),
                BalanceCard(
                  title: 'Tarjeta',
                  amount: 'Saca tu Tarjeta Nequi',
                  icon: Icons.credit_card,
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                  height: 85,
                  trailingIcon: Icons.arrow_forward,
                ),
                BalanceCard(
                  title: 'Metas',
                  amount: 'Ahorra para un sueño acá',
                  icon: Icons.track_changes,
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                  height: 85,
                  trailingIcon: Icons.arrow_forward,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                if (isExpanded)
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    color: Color(0xFF20103A),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Tus topes',
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.expand_less, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                isExpanded = false;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Aquí va la información adicional',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = true;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.0), 
                    padding:EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 216, 215, 220),
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0), // Ajusta el radio según lo necesites
                      topRight: Radius.circular(12.0), // Ajusta el radio según lo necesites
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tus topes',
                            style: TextStyle(color: Colors.black)),
                        Icon(Icons.expand_less, color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
