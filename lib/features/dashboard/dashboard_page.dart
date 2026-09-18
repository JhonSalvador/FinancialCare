import 'package:flutter/material.dart';

import 'widgets/patrimonio_card.dart';
import 'widgets/summary_card.dart';
import 'controllers/dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final controller = DashboardController();

  late Future<double> patrimonio;

  @override
  void initState() {
    super.initState();

    patrimonio = controller.getPatrimonio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Olá, Guilherme",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Setembro 2026",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),

        actions: const [
          Icon(Icons.notifications_none, color: Color(0xFF005124)),

          SizedBox(width: 20),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Card principal do patrimônio
            FutureBuilder<double>(
              future: patrimonio,

              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }

                return PatrimonioCard(value: snapshot.data!);
              },
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: const SummaryCard(
                    title: "Saldo",

                    value: "R\$ 5.000",

                    icon: Icons.account_balance_wallet,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: const SummaryCard(
                    title: "Saldo",

                    value: "R\$ 5.000",

                    icon: Icons.account_balance_wallet,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              "Evolução patrimonial",

              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Container(
              height: 150,

              decoration: BoxDecoration(
                color: const Color(0xFFF8FAF9),

                borderRadius: BorderRadius.circular(16),
              ),

              child: const Center(
                child: Text(
                  "Gráfico futuramente",

                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF005124),

        child: const Icon(Icons.add, color: Colors.white),

        onPressed: () {},
      ),
    );
  }
}
