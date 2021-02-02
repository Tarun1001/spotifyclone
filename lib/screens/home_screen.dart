import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget AlbumCoverContainer(
      {String coverURl, String title, String singerName}) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                color: Colors.white,
                height: 140,
                width: 140,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network(
                    coverURl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 22.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              singerName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }

  List<String> recommendationList = [
    'https://i.scdn.co/image/ab67706f000000037a181d9fed936372672c40ca',
    'https://external-preview.redd.it/8YeZJm4Z1KIehpv-hlfM7deGNKa7QgsL87quY2qpmKY.jpg?auto=webp&s=11eebb858456e59a986c98856e397b6d33d1993f',
    'https://www.okayplayer.com/wp-content/uploads/2019/05/Screen-Shot-2019-05-03-at-8.29.24-AM.png',
    'https://i.pinimg.com/736x/8a/72/ac/8a72ac26dafecea456106de712992f17.jpg',
    'https://i.pinimg.com/736x/a6/2c/92/a62c92161ebefc91ffba6cf141a7b311.jpg',
  ];
  List<String> coverList = [
    'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/00f56557183915.59cbcc586d5b8.jpg',
    'https://i.pinimg.com/originals/f8/87/a6/f887a654bf5d47425c7aa5240239dca6.jpg',
    'https://omniaintellegohome.files.wordpress.com/2019/08/rock.jpg?w=880',
    'https://i.pinimg.com/736x/8a/72/ac/8a72ac26dafecea456106de712992f17.jpg',
    'https://i.pinimg.com/736x/a6/2c/92/a62c92161ebefc91ffba6cf141a7b311.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.black])),
        child: Padding(
          padding: EdgeInsets.only(top: 40, bottom: 40, right: 0, left: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Good Morning' + ' ' + 'Tarun',
                      style: TextStyle(color: Colors.white, fontSize: 26.0),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Recommended for You",
                  style: TextStyle(color: Colors.white, fontSize: 26.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height * .4,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      AlbumCoverContainer(
                          coverURl: recommendationList[0],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[1],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[2],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[3],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[4],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Recently Played',
                  style: TextStyle(color: Colors.white, fontSize: 26.0),
                ),
                SizedBox(
                  height: 10,
                ),
                LimitedBox(
                  maxHeight: MediaQuery.of(context).size.height * .4,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      AlbumCoverContainer(
                          coverURl: recommendationList[0],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[1],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[2],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[3],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                      SizedBox(
                        width: 20,
                      ),
                      AlbumCoverContainer(
                          coverURl: recommendationList[4],
                          title: 'Cover Name',
                          singerName: 'Singer Name'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
