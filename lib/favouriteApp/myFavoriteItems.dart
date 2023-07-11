import 'package:flutter/material.dart';
import 'package:myproject/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class MyFavouriteItems extends StatefulWidget {
  const MyFavouriteItems({super.key});

  @override
  State<MyFavouriteItems> createState() => _MyFavouriteItemsState();
}

class _MyFavouriteItemsState extends State<MyFavouriteItems> {
  @override
  Widget build(BuildContext context) {
    final FavouriteProvider = Provider.of<FavouriteItemProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Favourite App')),
        actions: [
          InkWell(
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavouriteItems()));
            }),
            child: Icon(Icons.favorite),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: FavouriteProvider.selectedItem.length,
              itemBuilder: ((context, index) {
                return Consumer<FavouriteItemProvider>(builder: ((context, value, child) {
                  return ListTile(
                  onTap: () {
                    if(value.selectedItem.contains(index)){
                      value.removeItem(index);
                    }
                    else
                    {
                      value.addItem(index);
                    }
                    // setState(() {     
                    // });
                  },
                  title: Text('Item '+index.toString()),
                  trailing: Icon(
                  value.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_border_outlined),
                );
                }));
              })
            ),
          )
        ],
      ),
    );
  }
}
