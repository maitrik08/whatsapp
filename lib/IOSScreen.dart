// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class IOSScreen extends StatefulWidget {
//   const IOSScreen({super.key});
//
//   @override
//   State<IOSScreen> createState() => _IOSScreenState();
// }
//
// class _IOSScreenState extends State<IOSScreen> {
//   @override
//   Widget build(BuildContext context) {
//     ISOProvider IsoProvider = Provider.of<ISOProvider>(context, listen: false);
//     CupertinoDynamicColor color = CupertinoDynamicColor(color: Color(0xff2C5E85), darkColor: Color(0xff2C5E85), highContrastColor: Color(0xff2C5E85), darkHighContrastColor: Color(0xff2C5E85), elevatedColor: Color(0xff2C5E85), darkElevatedColor: Color(0xff2C5E85), highContrastElevatedColor: Color(0xff2C5E85), darkHighContrastElevatedColor: Color(0xff2C5E85));
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CupertinoApp(
//         debugShowCheckedModeBanner: false,
//         home: CupertinoTabScaffold(
//           backgroundColor: CupertinoColors.black,
//           tabBar: CupertinoTabBar(
//               backgroundColor: CupertinoColors.black,
//                 inactiveColor: CupertinoColors.systemGrey,
//                 onTap: (value) {
//                   IsoProvider.ChangeIndex(value);
//                 },
//                 items:[
//                   BottomNavigationBarItem(
//                       icon: Icon(CupertinoIcons.circle),
//                     label: 'Status'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Consumer(builder: (context, value, child) {
//                         return IsoProvider.CurrentIndex==1?Icon(CupertinoIcons.phone_fill):Icon(CupertinoIcons.phone);
//                       },),
//                       label: 'Calls'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Consumer(builder: (context, value, child) {
//                         return IsoProvider.CurrentIndex==2?Icon(CupertinoIcons.group_solid):Icon(CupertinoIcons.group);
//                       },),
//                       label: 'Communities'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Consumer(builder: (context, value, child) {
//                         return  IsoProvider.CurrentIndex==3?Icon(CupertinoIcons.chat_bubble_2_fill):Icon(CupertinoIcons.chat_bubble_2);
//                       },),
//                       label: 'Chats'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Consumer(builder: (context, value, child) {
//                         return IsoProvider.CurrentIndex==4?Icon(CupertinoIcons.settings):Icon(CupertinoIcons.settings_solid);
//                       },),
//                       label: 'Setting'
//                   ),
//                 ]
//             ),
//             tabBuilder: (context, index) {
//               return CupertinoTabView(
//                 builder: (context) {
//                   return CupertinoPageScaffold(
//                     backgroundColor: CupertinoColors.black,
//                       child: CustomScrollView(
//                         slivers: [
//                           SliverAppBar(
//                             backgroundColor: CupertinoColors.black,
//                             leading: Text(
//                               'Edit',
//                               style: TextStyle(
//                                 color: color
//                               ),
//                             ),
//                             actions: [
//                               Icon(Icons.camera_alt_outlined,color: color),
//                               Icon(Icons.edit,color: color,)
//                             ],
//                             flexibleSpace: Text(
//                                 'Chats',
//                               style: TextStyle(
//                                 color: Colors.white
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                   );
//                 },
//               );
//             },
//         ),
//       ),
//     );
//   }
// }
// class ISOProvider extends ChangeNotifier{
//   int CurrentIndex = 0;
//   void ChangeIndex(value){
//     CurrentIndex = value;
//     notifyListeners();
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Androidscreen.dart';
class IOSScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final isoProvider = Provider.of<ISOProvider>(context);
    TextEditingController _searchController = TextEditingController();
    List<Widget> Tabs = [
      Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              backgroundColor: Color(0xff131313),
              largeTitle: Text(
                'Status',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(top: 20,left:4 ),
                child: Text(
                  'Privacy',
                  style: TextStyle(
                      color: CupertinoColors.systemBlue,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2A2A2C),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2A2A2C),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 28,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 26,
                        child: CircleAvatar(
                          radius: 24.7,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKR2gJ-TUxZaoe48gLOOxG4nKmSpKImd5HWQ&usqp=CAU'),
                        ),
                      ),
                    ),
                    title: Text(
                      'My Status',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    subtitle: Text(
                      '19h ago',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    trailing: Container(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff414148),
                            child: Icon(Icons.camera_alt,color: CupertinoColors.systemBlue,size: 17,),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff414148),
                            child: Icon(CupertinoIcons.pen,color: CupertinoColors.systemBlue,size: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,bottom: 10),
                child: Text(
                  'RECENT UPDTAES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff2A2A2C),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        for(int index=0; index<15 ; index++)...[
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 3),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: CupertinoColors.systemBlue,
                                  radius: 28,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 26,
                                    child: CircleAvatar(
                                      radius: 24.7,
                                      backgroundImage: chats[index].Profile,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  chats[index].Name,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                                SizedBox(height: 2),
                                                Text(
                                                  chats[index].Time,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Divider(
                              color: Colors.grey.shade700,
                              thickness: 0.3,
                              height: 1,
                            ),
                          ),
                        ],
                      ],
                    )
                ),
              ),
            ),

          ],
        ),
      ),
      Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:  Container(
                  height: 25,
                  color: Color(0xff131313)
              ),
            ),
            CupertinoSliverNavigationBar(
              backgroundColor: Color(0xff131313),
              largeTitle: Text(
                'Calls',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              middle: Container(
                height: 25,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff2A2A2C),
                ),
                child: Row(
                  children: [
                    Consumer(
                      builder: (context, ISOProvider, child) {
                        return InkWell(
                          onTap: () {
                            isoProvider.ALL();
                            print('all');
                          },
                          child: Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: isoProvider.all?Color(0xff5c5b60):Color(0xff2A2A2C),
                            ),
                            child: Center(
                              child: Text(
                                'All',
                                style: TextStyle(color:Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Consumer(
                      builder: (context, ISOProvider, child) {
                        return InkWell(
                          onTap: () {
                            print('miss');
                            isoProvider.missed();
                          },
                          child: Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: isoProvider.Missed?Color(0xff2A2A2C):Color(0xff5c5b60),
                            ),
                            child: Center(
                              child: Text(
                                'Missed',
                                style: TextStyle(color:Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(top: 15,left:4 ),
                child: Text(
                  'Edit',
                  style: TextStyle(
                      color: CupertinoColors.systemBlue,
                      fontSize: 20
                  ),
                ),
              ),
              trailing: Icon(Icons.add_ic_call_outlined,color: CupertinoColors.systemBlue,size: 23,),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2A2A2C),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff484345),
                      radius: 20,
                      child: Icon(CupertinoIcons.link,color: CupertinoColors.systemBlue,size: 20,),
                    ),
                    title: Text(
                      'Create Call Link',
                      style: TextStyle(
                          color: CupertinoColors.systemBlue,
                          fontSize: 17
                      ),
                    ),
                    subtitle: Text(
                      'Share a link for your Whatsapp call',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,bottom: 10),
                child: Text(
                  'RECENT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff2A2A2C),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        for(int index=0; index<15 ; index++)...[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage: chats[index].Profile,
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  chats[index].Name,
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 14,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                                SizedBox(height: 2),
                                                Row(
                                                  children: [
                                                    Icon(Icons.videocam_rounded,color: Colors.grey,size: 15,),
                                                    SizedBox(width: 3,),
                                                    Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13,
                                                        decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        chats[index].Time,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13
                                        ),
                                      ),
                                      Icon(Icons.info_outlined,color: CupertinoColors.systemBlue,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 65),
                            child: Divider(
                              color: Colors.grey.shade700,
                              thickness: 0.3,
                              height: 1,
                            ),
                          ),
                        ],
                      ],
                    )
                ),
              ),
            ),

          ],
        ),
      ),
      Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff131313),
          title: Text('Communities'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Image.asset('Aseets/community.png'),
              SizedBox(height: 20,),
              Text(
                'Introdusing Communities',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.5
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Easily organize your relted groups and send annoucements. Now, your communities, like neighborhoods or schools, can have their own space.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey,),
              SizedBox(height: 10),
              Text(
                'Start a Community',
                style: TextStyle(
                    color: CupertinoColors.systemBlue
                ),
              ),
              SizedBox(height: 10,),
              Divider(color: Colors.grey,),
            ],
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              backgroundColor: Color(0xff131313),
              largeTitle: Text(
                'Chats',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(top: 20,left:4 ),
                child: Text(
                  'Edit',
                  style: TextStyle(
                      color: CupertinoColors.systemBlue,
                      fontSize: 20
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: CupertinoColors.systemBlue,
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Icons.edit,
                      color: CupertinoColors.systemBlue,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 290,
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2A2A2C),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.filter_list_rounded,
                      color: Colors.blue,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 15),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Broadcast Lists',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'New Group',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                color: Colors.grey.shade700,
                thickness: 0.3,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 33,right: 220,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.archivebox_fill,color: Colors.grey,size: 20,),
                    Text(
                      'Archived',
                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          decoration: TextDecoration.none
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade400,
                            backgroundImage: chats[index].Profile,
                            radius: 25,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                color: Colors.grey.shade700,
                                thickness: 0.3,
                                endIndent: 0,
                                indent: 0,
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          chats[index].Name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          chats[index].Message,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      chats[index].Time,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 15,
              ),
            ),
          ],
        ),
      ),
      Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color(0xff131313),
          title: Text('Settings'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C1E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Ff2G3JfE6RusolQj-KMDJgcmuhnnX_6xwwA-WPn7Alp_voGm0CpLtnURihKlDStwMnk&usqp=CAU'),
                          ),
                          title: Text(
                            'Seju Kotadiya',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                            ),
                          ),
                          subtitle: Text(
                            '🥰',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          trailing: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff363433),
                            child: Icon(CupertinoIcons.qrcode,color: CupertinoColors.systemBlue,size: 20,),
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey,),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.black,
                                title: const Text('Switch to Android',style: TextStyle(color: Colors.white),),
                                content: const SingleChildScrollView(
                                  child: Text('Are you Want to Switch to Android',style: TextStyle(color: Colors.white)),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Cancel',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Yes',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Androidscreen()));
                                    },
                                  ),
                                ],
                              );
                            },
                          );                        },
                          child: Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/11819/11819975.png', Title: "Avatar", color: Color(0xff337DF2),divider: false)
                      ),
                      SizedBox(height: 5,)
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1C1E)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/929/929495.png', Title: 'Starred Messages', color: Colors.amber),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/1055/1055329.png', Title: 'Linked Devices', color: Color(0xff0DA69F),divider: false)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1C1E)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/5066/5066640.png', Title: 'Account', color: Color(0xff007DFD)),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/1828/1828471.png', Title: 'Privacy', color: Color(0xff30ADE6)),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/1384/1384023.png', Title: 'Chats', color: Color(0xff3BDF54)),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/9498/9498592.png', Title: 'Notifications', color: Color(0xffF33F26)),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/2386/2386758.png', Title: 'Payments', color: Color(0xff1AC6A5)),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/7601/7601533.png', Title: 'Storage and Data', color: Color(0xff3CC34E),divider: false)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1C1E)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/12180/12180856.png', Title: 'Help', color: Color(0xff0179F9)),
                        Settingitem(icon: 'https://cdn-icons-png.flaticon.com/128/535/535234.png', Title: 'Tell a friend', color: Color(0xffF12A5B),divider: false)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ];
    return CupertinoTabScaffold(
      backgroundColor: CupertinoColors.black,
      tabBar: CupertinoTabBar(
        currentIndex: 3,
        backgroundColor: CupertinoColors.black,
        inactiveColor: CupertinoColors.systemGrey,
        onTap: (value) {
          isoProvider.changeIndex(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Consumer(
              builder: (context, value, child) {
                return isoProvider.currentIndex == 1
                    ? Icon(CupertinoIcons.phone_fill)
                    : Icon(CupertinoIcons.phone);
              },
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Consumer(
              builder: (context, value, child) {
                return isoProvider.currentIndex == 2
                    ? Icon(CupertinoIcons.group_solid)
                    : Icon(CupertinoIcons.group);
              },
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Consumer(
              builder: (context, value, child) {
                return isoProvider.currentIndex == 3
                    ? Icon(CupertinoIcons.chat_bubble_2_fill)
                    : Icon(CupertinoIcons.chat_bubble_2);
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Consumer(
              builder: (context, value, child) {
                return isoProvider.currentIndex == 4
                    ? Icon(CupertinoIcons.settings)
                    : Icon(CupertinoIcons.settings_solid);
              },
            ),
            label: 'Setting',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Tabs[index];
          },
        );
      },
    );
  }
}
List<ChatList> chats = [
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1qp6WFS1AsNH4BDYTgDY4fYeKZFOXKcdthQ&usqp=CAU'), Name: 'You', Message: 'Hello', Time: '03:34 PM'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcN1efpeSbqJYPoeE-bIAE8nciowrJfGCTsA&usqp=CAU'), Name: 'Aarmi', Message: 'Reacted', Time: '09:04 AM'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOY_1zfNujJFVtU4XLpXv9K97FFc-mu_likg&usqp=CAU'), Name: 'Sejal', Message: 'dummy', Time: '07:44 AM'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_vKDKAyh-ivBmxeQf1s7ztyH6GRntGCqyg&usqp=CAU'), Name: 'Papa', Message: 'message', Time: '06:02 AM'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg9EeSJgtad5jWkky-iMisJi7UFWOUu2Cg2w&usqp=CAU'), Name: 'Bhai', Message: 'tming?', Time: 'Yesterday'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTITYjhNJ9Is-23eW4tlTC5DDntFQnEQbTzXg&usqp=CAU'), Name: 'Margi', Message: 'Hlw..', Time: 'Yesterday'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMT7nF-RwHH1-DSfORZTYSlFz1_Y42OTYu5Qu6ZRPxrr7-CWXZXiT1z5loXaF9vIvhc2E&usqp=CAU'), Name: 'Tulsi', Message: 'Msg1', Time: 'Yesterday'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7y40_aJ19PFN2VM1c1HV7iarx9hjha1dAZQ&usqp=CAU'), Name: 'Sanjana', Message: 'dummy', Time: 'Yesterday'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzLN3GEWPs_f4kIOLuaVnKa8n9q3bp2LGn5g&usqp=CAU'), Name: 'Krishna', Message: 'hii', Time: '9/20/23'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMaz52mMM1jE_pBAruYZ1mTJ9_KX0KIXyw-A&usqp=CAU'), Name: 'Vanshika', Message: 'hie', Time: '9/20/23'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjDpGJIJr4el6sMkwWZnZGVBK8SCIjBgrGjA&usqp=CAU'), Name: 'Karuna bhabhi', Message: 'thank you', Time: '9/20/23'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX0j1_yZeHby-LW0ineuCtkoRNLhpcUbxKGA&usqp=CAU'), Name: 'Rutva', Message: 'abcdg', Time: '9/23/23'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN3FSuhfddAQPBgTP79MtKIe1Y-_LTS6kRr00Z7S80LLIYWbnaYn_2RXtUQc_M3-qV-gI&usqp=CAU'), Name: 'Tvisha', Message: 'ok', Time: '9/23/23'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXfsOLOAupEU_zMCv2w3vvd0iqknOB2PcMS-LSK-5SMQB9xvJ9ftI8YnVjONcEDx-frJs&usqp=CAU'), Name: 'Pritesha', Message: 'hiii', Time: '9/25/23'),
  ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg7wOpPc5PiANWkVcNTimzRXCl8GI1peBnSZ2eT1J7edzeCcK8wANKfmOlN2DyT1MpjOw&usqp=CAU'), Name: 'Dipti', Message: 'hello', Time: '9/25/23'),
];
class ISOProvider extends ChangeNotifier {
  int currentIndex = 0;
  bool all = true;
  bool Missed = true;
  void changeIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }
  void ALL(){
    all = true;
    Missed = true;
    notifyListeners();
  }
  void missed(){
    all = false;
    Missed = false;
    notifyListeners();
  }
}
Widget Settingitem({required String icon,required String Title,required Color color,bool divider = true}){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Center(
                    child: Image.network(icon,color: Colors.white,height: 20,width: 20,fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(width: 12,),
                Text(
                  Title,
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 15,)
          ],
        ),
      ),
      divider?Padding(
        padding: const EdgeInsets.only(left: 52),
        child: Divider(color: Colors.grey,),
      ):SizedBox()
    ],
  );
}