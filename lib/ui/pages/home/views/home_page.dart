import 'package:flutter/material.dart';
import 'package:hello_app/core/colors.dart';
import 'package:hello_app/ui/pages/home/components/app_bottom_bar_item.dart';
import 'package:hello_app/ui/pages/home/components/visit_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) {
            return VisitListItem(image: index,);
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          color: appPrimaryColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBottomBarItem(
                icon: Icon(Icons.menu),
                label: 'Visita',
                onPressed: () => null,
              ),
              Expanded(
                child: Container(),
              ),
              AppBottomBarItem(
                icon: Icon(Icons.list),
                label: 'Tarefa',
                onPressed: () => null,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        tooltip: 'Increment Counter',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: appPrimaryDarkColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
