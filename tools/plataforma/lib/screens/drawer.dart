import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://encurtador.com.br/cyUWX"),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text(
              'MIND Moda Sustentável',
              style: TextStyle(
                height: 0.2,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            accountEmail: Text('R. Caramuru, 11 - Centro, Canoas'),
          ),
          const ListTile(
              title: Text('Últimos Produtos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ))),
          _widgetContainer(
            color: const Color(0x2B18D174),
            title: const Text('Bolsa de abelhas'),
            subtitle: const Text("R\$38,99"),
            icon: Icons.shopping_cart_rounded,

            backgroundImage: const NetworkImage(
                'https://images.pexels.com/photos/2002717/pexels-photo-2002717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            onTap: () {},
          ),
          _widgetContainer(
            color: const Color(0x2B18D174),
            title: const Text('Camisa Gola Lisa Olive'),
            subtitle: const Text("R\$20,99"),
            icon: Icons.shopping_cart_rounded,

            backgroundImage: const NetworkImage(
                'https://deco-sites-loja-teste-a.deno.dev/live/invoke/website/loaders/image.ts?src=https%3A%2F%2Fbravtexfashionstore.vtexassets.com%2Farquivos%2Fids%2F155840%2FVerdeClaro_Male_Crew_Neck_Worn__body_shape__-_Tag.H03.png%3Fv%3D637685659721100000&fit=cover&width=720&height=720'),
            onTap: () {},
          ),
          _widgetContainer(
            color: const Color.fromARGB(45, 196, 196, 196),
            title: const Text('Vestido rosa P'),
            subtitle: const Text("R\$18,90"),
            icon: Icons.do_not_disturb,

            backgroundImage: const NetworkImage(
                'https://m.media-amazon.com/images/I/41jw3c8sH3L._AC_.jpg'),
            onTap: () {},
          ),
          _widgetContainer(
            color: const Color(0x2B18D174),
            title: const Text('Camisa Polo Azul'),
            subtitle: const Text("R\$20,99"),
            icon: Icons.shopping_cart_rounded,

            backgroundImage: const NetworkImage(
                'https://www.jardelatacadao.com.br/lojas/00050181/prod/camisa_polo_50_algodao_50_dry_tradicional_jardel_azul_royal_jardel_atacadao_000041B.jpg'),
            onTap: () {},
          ),
          _widgetContainer(
            color: const Color(0x2CC4C4C4),
            title: const Text('Mochila de macaco'),
            subtitle: const Text("R\$13.483,28"),
            icon: Icons.do_not_disturb,

            backgroundImage: const NetworkImage(
                'https://ae01.alicdn.com/kf/UTB89NxSf4HEXKJk43Jeq6yeeXXaF/Cool-Animal-Print-Mochilas-para-Crian-as-Padr-o-Orangotango-Mochila-Escolar-para-Meninos-Saco-de.jpg_.webp'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  _widgetContainer({
    required Widget? title,
    required Widget? subtitle,
    required Function onTap,
    required Color? color,
    required ImageProvider backgroundImage,
 
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child:
                    CircleAvatar(radius: 25, backgroundImage: backgroundImage),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width - 230),
                child: ListTile(
                  title: title,
                  subtitle: subtitle,
                ),
              ),
              Icon(icon),
            ],
          ),
        ),
      ),
    );
  }
}
