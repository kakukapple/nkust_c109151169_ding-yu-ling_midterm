import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);   //重覆播放音樂

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _previousIndex = 0;
  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    imageCache.clear();

    if(_currentindex == 0) player.play(AssetSource("18.mp3"));   //預設首頁音樂
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳', style: TextStyle(fontFamily: 'GenYoMin-B')),
          centerTitle: true,
          backgroundColor: Color(0xfff49f05),),   //標題置中
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xfff49f05),
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontFamily: 'GenYoMin-B'),
          selectedFontSize: 16.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity),
              label: '自我介紹',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: '學習歷程',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.pending_actions),
              label: '大學計畫',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.engineering),
              label: '專業方向',
            ),
          ],
          onTap: (index) { setState(() {
            _previousIndex = _currentindex;
            _currentindex = index;
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  String s1 =
      '我叫丁鈺羚，來自台北，高中畢業於大安高工，目前正在就'
      '讀高雄科技大學的資訊工程系，性格較內斂溫和，興趣是運'
      '動和聽音樂，我爸以前曾開過網咖，從小就教我電腦的相關知識及'
      '操作，我自己也很喜歡操作電腦，同時也對電腦產生了興趣，使我'
      '國中就有意想往程式設計這方面發展。';
  String s2 =
      '平時喜歡玩遊戲，射擊類、經營類、益智類的都有涉略一點'
      '，空閒時也會玩數獨和踩地雷，小時候常常和爺爺下象棋，'
      '所以對象棋也有興趣。';

  @override
  Widget build(BuildContext context) {



    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("自我介紹",
                style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'GenYoMin-B')),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                  offset: Offset(6, 6)),
              ],),
            child:Text('        ' + s1 + '\n\n        ' + s2,
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'GenYoMin-M',
                  fontWeight:FontWeight.normal,
                  height: 1.5),),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('assets/images/me.jpg'),
            height: 240,
            width: 450,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/images/me2.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/images/me3.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {

  String s1 = '擁有工業電子丙級證照';
  String s2 = '學習焊接、電路的基本操作及知識';
  String s3 = '參加2022 ITSA全國大專程式設計極客挑戰賽';
  String s4 = '第一次參加全國比賽，雖然沒有成功進入決賽，但也激起我寫程式的慾望也清楚瞭解團隊合作的重要性，未來我打算明年再戰';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("學習歷程",
                style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'GenYoMin-B')),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                  offset: Offset(6, 6)),
              ],),


            child:Text.rich(
                textAlign: TextAlign.start,
                TextSpan(
                    style: TextStyle(
                      fontSize:18,
                      fontWeight:FontWeight.bold,
                      fontFamily: 'GenYoMin-B',
                      height: 1.5,),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.fact_check),
                      ),

                      TextSpan(
                          text: ' ' + s1, style: TextStyle(fontSize: 22)
                      ),

                      TextSpan(
                          text: '\n'+ s2, style: TextStyle(fontFamily: 'GenYoMin-M',fontWeight:FontWeight.normal)
                      ),])

            ),
          ),

          //放一張照片
          Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(11),
              image: DecorationImage(
                image: AssetImage('assets/images/certificate.png'),
                fit: BoxFit.cover ,
              ),
              color: Colors.white,
            ),
          ),

          SizedBox(height: 20),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                  offset: Offset(6, 6)),
              ],),

            child:Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    style: TextStyle(
                      fontSize:18,
                      fontWeight:FontWeight.bold,
                      fontFamily: 'GenYoMin-B',
                      height: 1.5,),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.generating_tokens),
                      ),

                      TextSpan(
                          text: ' ' + s3, style: TextStyle(fontSize: 22)
                      ),

                      TextSpan(
                          text: '\n' + s4, style: TextStyle(fontFamily: 'GenYoMin-M',fontWeight:FontWeight.normal)
                      ),])

            ),),

          //放一張照片
          Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(11),
              image: DecorationImage(
                image: AssetImage('assets/images/ITSA.png'),
                fit: BoxFit.cover ,
              ),
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SizedBox(height: 85,),
              Text("大學四年計畫",
                  style: TextStyle(fontSize:24,
                      fontWeight:FontWeight.bold,
                      fontFamily: 'GenYoMin-B'))],
          ),

          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,),

              Container(
                height: 500,
                width: 300,
                child: ListView(
                  children: [           //條列式參考
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                            offset: Offset(6, 6)),
                        ],),

                      child:Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                              style: TextStyle(
                                fontSize:18,
                                fontWeight:FontWeight.bold,
                                fontFamily: 'GenYoMin-B',
                                height: 1.5,),

                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.translate),
                                ),

                                TextSpan(
                                    text: ' 學好英文', style: TextStyle(fontSize: 22)
                                ),

                                TextSpan(
                                    text: '\n - 目標多益700',
                                    style: TextStyle(
                                        fontFamily: 'GenYoMin-M',
                                        fontWeight:FontWeight.normal
                                    )),])
                      ),),
                    SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                            offset: Offset(6, 6)),
                        ],),

                      child:Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                              style: TextStyle(
                                fontSize:18,
                                fontWeight:FontWeight.bold,
                                fontFamily: 'GenYoMin-B',
                                height: 1.5,),
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.timeline),
                                ),

                                TextSpan(
                                    text: ' 學習生活新技能', style: TextStyle(fontSize: 22)
                                ),

                                TextSpan(
                                  text: '\n - 考取機車駕照'
                                      '\n - 通過日文N1檢定'
                                      '\n - 熟練word/ppt/excel',
                                  style: TextStyle(
                                      fontFamily: 'GenYoMin-M',
                                      fontWeight:FontWeight.normal
                                  ),)])

                      ),),
                    SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                            offset: Offset(6, 6)),
                        ],),

                      child:Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                              style: TextStyle(
                                fontSize:18,
                                fontWeight:FontWeight.bold,
                                fontFamily: 'GenYoMin-B',
                                height: 1.5,),
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.list),
                                ),

                                TextSpan(
                                    text: ' 自學程式', style: TextStyle(fontSize: 22)
                                ),

                                TextSpan(
                                    text: '\n - 寫遊戲腳本'
                                        '\n - 完成python爬蟲'
                                        '\n - 自動化剪輯、上傳影片',
                                    style: TextStyle(
                                        fontFamily: 'GenYoMin-M',
                                        fontWeight:FontWeight.normal
                                    )),])

                      ),),
                    SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                            offset: Offset(6, 6)),
                        ],),

                      child:Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                              style: TextStyle(
                                fontSize:18,
                                fontWeight:FontWeight.bold,
                                fontFamily: 'GenYoMin-B',
                                height: 1.5,),
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.generating_tokens),
                                ),

                                TextSpan(
                                    text: ' 投資理財', style: TextStyle(fontSize: 22)
                                ),

                                TextSpan(
                                    text: '\n - 矯正牙齒'
                                        '\n - 打工存錢'
                                        '\n - 限制每月開銷'
                                        '\n - 外幣/股票投資',
                                    style: TextStyle(fontFamily: 'GenYoMin-M',fontWeight:FontWeight.normal)
                                ),])

                      ),),
                  ],
                ),),],),],),);
  }
}

class screen4 extends StatelessWidget {
  String s1 = '目前的想法是朝向軟體工程師這方向發展，尤其是比較偏向'
      '前後端工程師或是行動裝置開發。';
  String s2 = '因為大二大三的課程和專題的原因，覺得自己對於寫網頁和寫'
      'app挺有興趣的，往後也會試著根據自己的需求，寫一個想要的app。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("專業方向",
                style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'GenYoMin-B')),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Color(0xff97BDC2),
                  offset: Offset(6, 6)),
              ],),
            child:Text('        ' + s1 + '\n\n        ' + s2,
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'GenYoMin-M',
                  fontWeight:FontWeight.normal,
                  height: 1.5),),
          ),],),);
  }
}
