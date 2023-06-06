import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // Row 안의 Widget들을 우측(끝 쪽, end) 정렬
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .end, // Row 안의 Column으로 지정한 부분 우측 정렬
                      children: [
                        Text('반가워, 금진.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            )),
                        Text(
                          '보고싶었어. 또 와줘서 기뻐.',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$ 10,000,000,000',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF2833A),
                        textColor: Colors.black),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xff1f2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // main: 세로축
                  crossAxisAlignment: CrossAxisAlignment.end, // cross: 가로축
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.deepOrange.withOpacity(0.8),
                          fontSize: 20,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  order: 1,
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                const CurrencyCard(
                  order: 2,
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '10',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                ),
                const CurrencyCard(
                  order: 3,
                  name: 'Dollar',
                  code: 'DOL',
                  amount: '1000',
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
