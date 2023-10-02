import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/IOSScreen.dart';

class Androidscreen extends StatefulWidget {
  const Androidscreen({super.key});

  @override
  State<Androidscreen> createState() => AndroidscreenState();
}
class AndroidscreenState extends State<Androidscreen> with SingleTickerProviderStateMixin{
  late TabController controller;

  Color color = Color(0xff00A783);
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
  List<ChatList> Status = [
    ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1rYZwON7kGMg7RfPw-eG1G_rQsjRM9D7wlQ&usqp=CAU'), Name: 'Helly', Message: '5 minutes ago', Time: ''),
    ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV5eZYEz6RIAPcOQxFsZSKrxAzyBmc2WWDNA&usqp=CAU'), Name: 'Dipti', Message: '18 minutes ago', Time: ''),
    ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkpHSX8HtL1dDVnlc1T3HFkjb6dp4uLXz5GQ&usqp=CAU'), Name: 'Nupur', Message: '55 minutes ago', Time: ''),
    ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblttfNuEtsSp6dg-dvpdaP9FHhPMPBpT4TA&usqp=CAU'), Name: 'Shreya', Message: '8:14 AM', Time: ''),
    ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdc1-b7-rraeRvIARWhciUR8-96hpMRvRZxQ&usqp=CAU'), Name: 'Nisha', Message: '6:12 AM', Time: ''),
    ChatList(Profile: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAeqeTDN4JzG8nutv3ZHnCYbLEKXMxL_wKWA&usqp=CAU'), Name: 'Sujal', Message: '12:30 AM', Time: ''),
  ];
  @override
  void initState() {
    // TODO: implement initState
   controller = TabController(vsync: this, length: 4,initialIndex: 1);
   print(ViewUpdate);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final updateModel = Provider.of<UpdateModel>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final MaterialColor mycolor = MaterialColor(0xff00A783, <int, Color>{
      50: Color(0xff00A783),
      100: Color(0xff00A783),
      200: Color(0xff00A783),
      300: Color(0xff00A783),
      400: Color(0xff00A783),
      500: Color(0xff00A783),
      600: Color(0xff00A783),
      700: Color(0xff00A783),
      800: Color(0xff00A783),
      900: Color(0xff00A783),
    },
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: index==1?false:true,
            snap: false,
            floating: true,
            title: Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            flexibleSpace: const FlexibleSpaceBar(
            ),
            actions: [
              Icon(Icons.camera_alt_outlined,color: Colors.grey,),
              SizedBox(width: 20),
              Consumer(
                builder:(context, UpdateModel, child) {
                  return Row(
                    children: [
                      if(index==1||index==3)...{
                        Icon(Icons.search,color: Colors.grey,),
                        SizedBox(width: 20),
                      },
                    ],
                  );
                },
              ),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.black,
                            title: const Text('Switch to IOS',style: TextStyle(color: Colors.white),),
                            content: const SingleChildScrollView(
                              child: Text('Are you Want to Switch to IOS',style: TextStyle(color: Colors.white)),
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => IOSScreen()));
                                },
                              ),
                            ],
                          );
                        },
                    );
                         //Navigator.of(context).push(MaterialPageRoute(builder: (context) => IOSScreen()));
                  },
                  child: Icon(Icons.more_vert,color: Colors.grey,)
              ),
              SizedBox(width: 10),
            ],
            backgroundColor: Color(0xff121A1E),
          ),
          SliverAppBar(
            backgroundColor: Color(0xff121A1E),
            pinned: true,
            snap: false,
            toolbarHeight: 40,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                  height: 40,
                  color: Color(0xff121A1E),
                  child: DefaultTabController(
                    initialIndex: 1,
                    length: 4,
                    child: TabBar(
                        controller: controller,
                        indicatorSize: TabBarIndicatorSize.label,
                        automaticIndicatorColorAdjustment: true,
                        unselectedLabelColor: Colors.grey,
                        labelColor: color,
                        indicatorColor: color,
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.zero,
                        isScrollable: true,
                        labelStyle: TextStyle(
                            color: color
                        ),
                        onTap: (value) {
                          updateModel.ChangeViewUpdate(); // To toggle ViewUpdate
                          updateModel.GetIndex(value);
                          print(index);
                          print(controller.index);
                        },
                        tabs: [
                          Container(
                            width: width/12,
                            child: Tab(
                              iconMargin: EdgeInsets.zero,
                              child: Icon(Icons.groups_sharp,size: 25),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: width/3.4,
                            child: Tab(
                              text: 'Chats',
                            ),
                          ),
                          Container(
                            width: width/3.6,
                            child: Tab(
                              text: 'Updates',
                            ),
                          ),
                          Container(
                            width: width/3.6,
                            child: Tab(
                              text: 'Calls',
                            ),
                          )
                        ]
                    ),
                  )
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Image.asset('Aseets/community.png'),
                    SizedBox(height: 20,),
                    Text(
                      'Stay connected with a community',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21.5
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Comunities bring members together in \ntopic-basedngroups. and make it easy to get admin announcements. Any community you're added to will appear here.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: width,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'See example communities',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 15
                              ),
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.arrow_forward_ios,color: color,size: 15),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      width: width-70,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Start your community',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Scaffold(
                  backgroundColor: Colors.black,
                  body: ListView(
                    children: [
                      for(int i  = 0 ; i <15;i++)...[
                        ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.blue,radius: 30,backgroundImage: chats[i].Profile,),
                          title: Text(
                            chats[i].Name,
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          subtitle: Text(
                            chats[i].Message,
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                          trailing: Text(
                            chats[i].Time,
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                  floatingActionButton: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                    child: Icon(Icons.chat,color: Colors.black),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.black,
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(Icons.more_vert_sharp,color: Colors.grey,)
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 30,
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREL1Lb6AFnr0akKL6LgWdKN67ve_zbU04kWQ&usqp=CAU'),
                              ),
                              Positioned(
                                top: 30,
                                left: 35,
                                child: SizedBox(
                                  height: 25,width: 25,
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(Icons.add,color: Colors.white,size: 25,),
                                  ),
                                ),
                              )
                            ],
                          ),
                          title: Text(
                            'My status',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          subtitle: Text(
                            'Tap to add status update',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          child: Text(
                            'Recent update',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ),
                        for(int i = 0 ; i < Status.length; i++)...[
                          Container(
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: color,
                                      radius: 32,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 28,
                                        child: CircleAvatar(
                                          backgroundImage: Status[i].Profile,
                                          radius: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 14),
                                        Text(
                                          Status[i].Name,
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                        Text(
                                          Status[i].Message,
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                          )
                        ],
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 25,bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Viewed updates',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              InkWell(

                                onTap: () {
                                  print(ViewUpdate);
                                  Provider.of<UpdateModel>(context, listen: false).ChangeViewUpdate();
                                },
                                child: Consumer<UpdateModel>(
                                  builder: (context, UpdateModel, child) {
                                    return Icon(ViewUpdate?Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down,color: Colors.grey,);
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Consumer<UpdateModel>(
                          builder: (context, UpdateModel, child) {
                            return ViewUpdate?Column(
                              children: [
                                for(int i = 0 ; i < Status.length; i++)...[
                                  Container(
                                      height: 70,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.grey,
                                              radius: 32,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.black,
                                                radius: 28,
                                                child: CircleAvatar(
                                                  backgroundImage: Status[i].Profile,
                                                  radius: 25,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 14),
                                                Text(
                                                  Status[i].Name,
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                ),
                                                Text(
                                                  Status[i].Message,
                                                  style: TextStyle(
                                                      color: Colors.grey
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                  )
                                ],
                              ],
                            ):SizedBox();
                          },
                        ),
                        Consumer<UpdateModel>(
                          builder: (context, UpdateModel, child) {
                            return ViewUpdate?SizedBox(height: 10):SizedBox();
                          },
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade800,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Channels',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(Icons.add,color: Colors.grey,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal:20),
                          child: Text(
                            'Stay updated on topics that master to you. Find channels to follow bellows',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                            child: Row(
                              children: [
                                Channel(),
                                Channel(),
                                Channel(),
                                Channel(),
                                Channel(),
                                Channel(),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 45,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: color
                            ),
                            child: Center(
                              child: Text(
                                'Find channels',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 160,)
                      ],
                    ),
                  ),
                  floatingActionButton: Container(
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade600,
                          ),
                          child: Icon(Icons.edit,color: Colors.white),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: color,
                          ),
                          child: Icon(Icons.camera_alt,color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.black,
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: color,
                            radius: 28,
                            child: Transform.rotate(angle: 34,child: Icon(Icons.insert_link_outlined,color: Colors.black,size: 30)),
                          ),
                          title: Text(
                            'Create call link',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            'Share a link for your whatsapp call',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                          child: Text(
                            'Recent',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                        for(int i  = 0 ; i <15;i++)...[
                          ListTile(
                              leading: CircleAvatar(backgroundColor: Colors.amber,radius: 28,backgroundImage: chats[i].Profile,),
                              title: Text(
                                chats[i].Name,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                              subtitle: Text(
                                chats[i].Time,
                                style: TextStyle(
                                    color: Colors.grey
                                ),
                              ),
                              trailing: Icon(i%2==0?Icons.call:Icons.videocam_rounded,color: color,)
                          )
                        ]
                      ],
                    ),
                  ),
                  floatingActionButton: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                    child: Icon(Icons.add_call,color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget Channel(){
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 155,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          border: Border.all(
            color: Colors.grey.shade800
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 30,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREL1Lb6AFnr0akKL6LgWdKN67ve_zbU04kWQ&usqp=CAU'),
                  ),
                  Positioned(
                    top: 32,
                    left: 35,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 25,width: 25,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 13,
                            child: CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        Icon(Icons.verified,color: CupertinoColors.activeGreen,size: 25,)
                      ],
                    ),
                  )
                ],
              ),
              Text(
                  'Name',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0x800E3031)
                ),
                child: Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 13
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class ChatList{
  NetworkImage Profile = NetworkImage('');
  String Name = '';
  String Message =  '';
  String Time = '';
  ChatList({required this.Profile,required this.Name,required this.Message,required this.Time});
}
bool ViewUpdate = false;
int index = 1;
class UpdateModel extends ChangeNotifier{

  void ChangeViewUpdate(){
    ViewUpdate = !ViewUpdate;
    notifyListeners();
  }
  void GetIndex(int value){
    index = value;
    notifyListeners();
  }
}
