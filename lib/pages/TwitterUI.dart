import 'package:flutter/material.dart';
import 'package:twitter_ui/models/tweet_model.dart';

class TwitterUI extends StatefulWidget {
  const TwitterUI({Key? key}) : super(key: key);
  static final String id = "TwitterUI";

  @override
  _TwitterUIState createState() => _TwitterUIState();
}

class _TwitterUIState extends State<TwitterUI> {

  List<TweetModel> items = [
    TweetModel(userImage: "assets/images/img_1.png", userName: "Umar ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 25, retweetNumber: 25, likeNumber: 25, contentImage: "assets/images/apple.jpg"),
    TweetModel(userImage: "assets/images/img_1.png", userName: "Olim ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 35, retweetNumber: 35, likeNumber: 35),
    TweetModel(userImage: "assets/images/img_1.png", userName: "Odam ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 54, retweetNumber: 54, likeNumber: 54, contentImage: "assets/images/apple.jpg"),
    TweetModel(userImage: "assets/images/img_1.png", userName: "Yusuf ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 87, retweetNumber: 87, likeNumber: 87),
    TweetModel(userImage: "assets/images/img_1.png", userName: "Ibrohim ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 25, retweetNumber: 25, likeNumber: 25, contentImage: "assets/images/apple.jpg"),
    TweetModel(userImage: "assets/images/img_1.png", userName: "Nuh ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 45, retweetNumber: 45, likeNumber: 45),
    TweetModel(userImage: "assets/images/img_1.png", userName: "Yunus ", nickName: "@alFaruq", tweetTime: " 3h", textContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the when an unknown printer took a galley of type and scrambled it to make a type speci", commentNumber: 45, retweetNumber: 45, likeNumber: 45, contentImage: "assets/images/apple.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          height: 35,
          width: 35,
          child: Image.asset("assets/images/bird.png"),
        ),
        leading: Icon(Icons.account_circle, color: Colors.grey.shade800,),
        actions: [

          Icon(Icons.notifications_none, color: Colors.grey.shade800,),
          SizedBox(width: 15,),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return _tweet(index);
        },
      ),
    );
  }

  Container _tweet(int index) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14),

                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 47, right: 30,bottom: 5,top: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite,color: Colors.grey.shade600,size: 18,),
                                    SizedBox(width: 5,),
                                    Text("Zack John ", style: TextStyle(color: Colors.grey.shade600),),
                                    Text("Liked ", style: TextStyle(color: Colors.grey.shade600),),
                                  ],
                                )
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //width: MediaQuery.of(context).size.width*1/7,
                                  child: Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      radius: 30,
                                      child: Image.asset(items[index].userImage),
                                    ),
                                  ),
                                ),
                                Container(
                                  //width: MediaQuery.of(context).size.width*6/7,
                                  child: Expanded(
                                    flex: 6,
                                    child: Column(
                                      children: [

                                        /// Name email time
                                        Container(
                                          padding: EdgeInsets.only(left: 5, right: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 7,
                                                child: Row(
                                                  children: [
                                                    Text(items[index].userName, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                    Text(items[index].nickName, style: TextStyle(color: Colors.grey.shade600),),
                                                    Text(items[index].tweetTime, style: TextStyle(color: Colors.grey.shade600),),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  alignment: Alignment.centerRight,
                                                  child: Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade600,),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        /// Text content
                                        Container(
                                          padding: EdgeInsets.only(left: 5, right: 5,bottom: 10),
                                          child: Text(items[index].textContent),
                                        ),



                                        /// Image
                                        if(items[index].contentImage != null)
                                        Container(
                                            padding: EdgeInsets.only(left: 10,right: 10,bottom: 15),
                                            child: Image.asset("assets/images/apple.jpg")),

                                        /// Icons
                                        Container(
                                          padding: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.notifications_none, color: Colors.grey.shade600,),
                                                    Text(items[index].commentNumber.toString(), style: TextStyle(color: Colors.grey.shade600),)
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.person_pin, color: Colors.grey.shade600,),
                                                    Text(items[index].retweetNumber.toString(), style: TextStyle(color: Colors.grey.shade600),)
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.favorite_border, color: Colors.grey.shade600,),
                                                    Text(items[index].likeNumber.toString(), style: TextStyle(color: Colors.grey.shade600),)
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.cloud_upload_outlined, color: Colors.grey.shade600,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(color: Colors.grey,)
                          ],
                        ),
                      );
  }

}
