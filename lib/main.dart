import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'หน้าแรก',
            style: TextStyle(
            color: Colors.pinkAccent,
            backgroundColor: Colors.amber,
            fontSize: 32,
            fontWeight: FontWeight.w800,
            ),
        ),
          leading: Text("leading"),
          actions: [
          Icon(
          Icons.menu,
          size: 60,
          color: Colors.blue,
          ),
          Icon(Icons.person)

        ],
      ),
      body:  Column(
        children: [
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Row(
          children: [
            Image.network(""
            ,width: 200,
            height: 200,
            fit: BoxFit.cover,
            ),
            ClipOval(
              child: Image.asset(
                "",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )
            )
          ],
          ),
          Row(
            children: [
              Expanded( //ขยาย
                  child: ElevatedButton( //ปุ่มทึบ
                      onPressed: () => {},
                      child: Text("ปุ่ม 1"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8)
                          )
                      ),
                  )
              ),
              SizedBox(
                width: 20,//เว้นแนวตั้ง
                height: 100,//เว้นแนวนอน
              ),
              Expanded(
                  child:OutlinedButton(
                      onPressed: () => {},
                      child: Text("ปุ่ม 2") ,
                     style: OutlinedButton.styleFrom(
                       backgroundColor: Colors.purpleAccent
                     ),
                  )
              )
            ],
          )
        ]
      ),
    );
  }
}