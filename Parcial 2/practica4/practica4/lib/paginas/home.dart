import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Disenio();
  }
}

class Disenio extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(flex: 1, child: Center(child: Text('Pagina principal'))),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Mi novia'),
                  Image.network(
                    'https://th.bing.com/th/id/OIP.rw1NFVk4mVbTqgFJNKx_iwHaEK?w=310&h=180&c=7&r=0&o=7&cb=12&dpr=1.3&pid=1.7&rm=3',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Image.network(
                    'https://th.bing.com/th/id/OIP.MJwYGgEWTGrCIytPbrrYywAAAA?w=148&h=150&c=7&r=0&o=7&cb=12&dpr=1.3&pid=1.7&rm=3',
                  ),
                  Image.network(
                    'https://th.bing.com/th/id/OIP.03B1QG_R4Nfw8Hb3BVtpFgAAAA?w=143&h=150&c=7&r=0&o=7&cb=12&dpr=1.3&pid=1.7&rm=3',
                  ),
                  Image.network(
                    'https://th.bing.com/th/id/OIP.83LeWPkLuU18j7y_qcCwxgAAAA?w=146&h=150&c=7&r=0&o=7&cb=12&dpr=1.3&pid=1.7&rm=3',
                  ),
                  Image.network(
                    'https://th.bing.com/th/id/OIP.TeJS0gW5HnKHD1biW4k0lQAAAA?w=124&h=150&c=7&r=0&o=7&cb=12&dpr=1.3&pid=1.7&rm=3',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
