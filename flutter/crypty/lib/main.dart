import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: Image.network(
                          "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Shayna Nana",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@shayna",
                        style:
                            TextStyle(fontSize: 12.0, color: Color(0xFF7E838A)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.network(
                        "https://s3-alpha-sig.figma.com/img/2798/3e46/241f08939607762016c2e6f93a1cea2b?Expires=1667174400&Signature=LWEs4VfhMsZ3o6YlCxqQK-FtKMTl2St1y93gxW90zCTw~3YDfBltR9hO-iwmwcP4A-tcaps0usSvMXAy7RH7yU0QNLPoYw6BV2wn9a46GTIJf41wmOQAvI3ehnE~xIJEcqy9kX5FMRTZS0BHgnMfo9PJbiTO3a5GR~wdpf8Q5l~xV~hDgdj91b71yMQD1AwgqyCNq3yidBguoBFOONXzHTB-aLrAthiMY4tNV1f9827ELFMhGSCsH0AI67cfWS2ObeExwkBDyBCewY1tsE-azV9UCpkhfqvsHfZr~5DiHs4a4GieGWR5Gg543ZNihsjX0WdosYq7bpXGPmGh9BO12g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                        fit: BoxFit.cover,
                        alignment: const Alignment(0, -0.50),
                        height: 160.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Assets",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF7E838A),
                                ),
                              ),
                              Text(
                                "\$50,000,00",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const Text(
                            "+1,812%",
                            style: TextStyle(
                              color: Color(0xFF36C361),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Ink(
                            decoration: ShapeDecoration(
                              shape: const CircleBorder(),
                              color: Colors.blue.shade900,
                            ),
                            child: IconButton(
                              splashRadius: 24.0,
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_circle_down),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            "Deposit",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Ink(
                            decoration: ShapeDecoration(
                              shape: const CircleBorder(),
                              color: Colors.blue.shade900,
                            ),
                            child: IconButton(
                              splashRadius: 24.0,
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_circle_up),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            "Withdraw",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Ink(
                            decoration: ShapeDecoration(
                              shape: const CircleBorder(),
                              color: Colors.blue.shade900,
                            ),
                            child: IconButton(
                              splashRadius: 24.0,
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.assessment_outlined),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            "Invest",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Ink(
                            decoration: ShapeDecoration(
                              shape: const CircleBorder(),
                              color: Colors.blue.shade900,
                            ),
                            child: IconButton(
                              splashRadius: 24.0,
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.credit_card),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            "Cards",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "My Watchlist",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.monetization_on,
                            color: Colors.orange,
                            size: 48.0,
                          ),
                          const SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Bitcoin",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "BTC",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            "\$8,220",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFDDFFE7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(6.0),
                            child: const Text(
                              "+25%",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF36C361),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.blue.shade700,
                            size: 48.0,
                          ),
                          const SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Ethereum",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "ETH",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            "\$12,560",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFD4D8),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(6.0),
                            child: const Text(
                              "-90%",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFEB3E4E),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.monetization_on,
                            color: Colors.amber,
                            size: 48.0,
                          ),
                          const SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Binance",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "BNC",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            "\$900",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF36C361),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFDDFFE7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(6.0),
                            child: const Text(
                              "+16%",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF36C361),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.blue.shade300,
                            size: 48.0,
                          ),
                          const SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Okex",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "OKX",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            "\$33,000",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFDDFFE7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(6.0),
                            child: const Text(
                              "+41%",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF36C361),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
