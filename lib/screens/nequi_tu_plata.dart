import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';

class Nequituplata extends StatefulWidget {
  const Nequituplata({Key? key}) : super(key: key);

  @override
  _NequituplataState createState() => _NequituplataState();
}

class _NequituplataState extends State<Nequituplata> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 11, 37),
        leading: Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Así está tu plata',
                      style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Toda tu plata suma',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            '\$107.688,86',
                            style: TextStyle(
                              fontSize: screenWidth * 0.08,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 15 + screenHeight * 0.08),
                  child: Column(
                    children: _buildBalanceCards(screenHeight),
                  ),
                ),
              ),
            ],
          ),
          _buildExpandableBottomSheet(screenHeight, screenWidth),
        ],
      ),
    );
  }

  List<Widget> _buildBalanceCards(double screenHeight) {
    final cardHeight = screenHeight * 0.1;
    final cardColor = Color.fromARGB(255, 255, 255, 255).withOpacity(0.2);

    return [
      BalanceCard(
        title: 'Disponible',
        amount: '\$63.688,86',
        icon: Icons.account_balance_wallet,
        color: cardColor,
        height: cardHeight,
      ),
      BalanceCard(
        title: 'Bolsillos',
        amount: '\$44.000,00',
        icon: Icons.savings,
        color: cardColor,
        height: cardHeight,
        trailingIcon: Icons.arrow_forward,
      ),
      BalanceCard(
        title: 'Colchón',
        amount: '\$0,00',
        icon: Icons.king_bed,
        color: cardColor,
        height: cardHeight,
        trailingIcon: Icons.arrow_forward,
      ),
      BalanceCard(
        title: 'Tarjeta',
        amount: 'Saca tu Tarjeta Nequi',
        icon: Icons.credit_card,
        color: cardColor,
        height: cardHeight,
        trailingIcon: Icons.arrow_forward,
      ),
      BalanceCard(
        title: 'Metas',
        amount: 'Ahorra para un sueño acá',
        icon: Icons.track_changes,
        color: cardColor,
        height: cardHeight,
        trailingIcon: Icons.arrow_forward,
      ),
    ];
  }

  Widget _buildExpandableBottomSheet(double screenHeight, double screenWidth) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isExpanded)
            Container(
              height: screenHeight * 0.8,
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
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02,
                horizontal: screenWidth * 0.05,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 216, 215, 220),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tus topes', style: TextStyle(color: Colors.black)),
                  Icon(Icons.expand_less, color: Colors.black),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}