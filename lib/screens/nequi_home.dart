import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';

class NequiHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 16, 55),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 30),      
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
              height: 110, // Ajusta la altura del botón
            ),
            BalanceCard(
              title: 'Bolsillos',
              amount: '\$44.000,00',
              icon: Icons.savings,
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
              height: 110, // Ajusta la altura del botón
              trailingIcon: Icons.arrow_forward, // Flecha a la derecha
            ),
            BalanceCard(
              title: 'Colchón',
              amount: '\$0,00',
              icon: Icons.king_bed,
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
              height: 110, // Ajusta la altura del botón
              trailingIcon: Icons.arrow_forward, // Flecha a la derecha
            ),
            BalanceCard(
              title: 'Tarjeta',
              amount: 'Saca tu Tarjeta Nequi',
              icon: Icons.credit_card,
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
              height: 110, // Ajusta la altura del botón
              trailingIcon: Icons.arrow_forward, // Flecha a la derecha
            ),
            BalanceCard(
              title: 'Metas',
              amount: 'Ahorra para un sueño acá',
              icon: Icons.track_changes,
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
              height: 110, // Ajusta la altura del botón
              trailingIcon: Icons.arrow_forward, // Flecha a la derecha
            ),
          ],
        ),
      ),
    );
  }
}
