import 'package:flutter/material.dart';

/*class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List view Deep Dive')),
      body: PageView(
        controller: pageController,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'Basic'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded), label: 'Vertical'),
          BottomNavigationBarItem(
              icon: Icon(Icons.line_style), label: 'Horizental'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}*/
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({required this.title});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final items = List.generate(100, (counter) => 'Item: $counter');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: buildListViews(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list), label: 'Basic'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded), label: 'Vertical'),
            BottomNavigationBarItem(
                icon: Icon(Icons.line_style), label: 'Horizental'),
          ],
          currentIndex: index,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          onTap: (int index) => setState(
            () => this.index = index,
          ),
        ));
  }

  //widget
  Widget buildListViews() {
    if (index == 0) {
      return buildBasicListView();
    } else if (index == 1) {
      return buildVerticalListView();
    } else if (index == 2) {
      return buildHorizentalListView();
    } else {
      return Container();
    }
  }
  //widget

//Basic List view Builder Method
  Widget buildBasicListView() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade100,
            child: Text('TA'),
          ),
          title: Text('Touheda Akther'),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(
            Icons.star,
            color: Colors.orange,
          ),
        ),
        //2
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade100,
            child: Text('MH'),
          ),
          title: Text('Mahmudul Hasan'),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(
            Icons.star,
            color: Colors.orange,
          ),
        ),
        //3
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown.shade100,
            child: Text('MN'),
          ),
          title: Text('Meher Niger'),
          subtitle: Text('Flutter Developer'),
          trailing: Icon(
            Icons.star,
            color: Colors.orange,
          ),
        )
      ],
    );
  }

//vertical list view builder
  Widget buildVerticalListView() {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }

//vertical list view builder
  Widget buildHorizentalListView() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          width: 100,
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}
