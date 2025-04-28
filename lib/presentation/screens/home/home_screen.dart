import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuItem> items = appMenuItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter + Material 3'),
      ),
      body: _HomeView(items: items),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    required this.items,
  });

  final List<MenuItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index) {
          return _CustomListTile(item: items[index]);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  
  final MenuItem item;

  const _CustomListTile({
    required this.item,
  });


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ListTile(
      leading: Icon(item.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color:colors.primary),
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      onTap: (){
        // TODO : Navegar a otra pantalla
      },
    );
  }
}
