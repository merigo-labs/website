import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  Widget iconLink(final String name, { required final String url }) => InkWell(
    child: Image.asset(
      'icons/$name',
      width: 32.0, height: 32.0,
    ),
    onTap: () => launchUrlString(url),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Merigo Labs',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Merigo Labs',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Building tools and dApps for the Solana ecosystem.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, color: Colors.white60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      iconLink(
                        'github64.png', 
                        url: 'https://github.com/merigo-labs/solana-web3',
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                      iconLink(
                        'twitter300.png', 
                        url: 'https://twitter.com/MerigoLabs',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      }, 
    );
  }
}