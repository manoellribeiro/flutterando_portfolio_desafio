import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_desafios_portfolio/app/modules/home/components/headerItem/headerItem_widget.dart';
import 'package:flutterando_desafios_portfolio/app/modules/home/components/projectTitle/projectTitle_widget.dart';
import 'package:flutterando_desafios_portfolio/app/modules/home/components/projectsCard/projectsCard_widget.dart';
import 'package:flutterando_desafios_portfolio/app/shared/images.dart';
import 'package:flutterando_desafios_portfolio/app/shared/strings.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> with SingleTickerProviderStateMixin {

  ScrollController _scrollController;
  AnimationController _animationController;
  bool _opacityAnimation = false;

   @override
  void initState() {
    _scrollController = ScrollController()..addListener(_scrollListener);
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
      );
    super.initState();
  }

  _scrollListener(){
    if (_scrollController.offset >= (_scrollController.position.maxScrollExtent/2)){
        setState(() {
          _opacityAnimation = true;
      });
    }else if (_scrollController.offset < (_scrollController.position.maxScrollExtent/2)){
      setState(() {
        _opacityAnimation = false;
      });
    }
  }

  scrollToMax(){
    _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
    setState(() {
      _opacityAnimation = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        titleSpacing: 200,
        title: Text(
          Strings.portfolioName,
          style: Theme.of(context).textTheme.subhead.copyWith(fontWeight: FontWeight.w700),
          ),
        elevation: 1,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.99),
        actions: <Widget>[
          HeaderItemWidget(title: Strings.work),
          HeaderItemWidget(title: Strings.about),
          HeaderItemWidget(title: Strings.products),
          HeaderItemWidget(title: Strings.contact),
          SizedBox(width: 200)
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle
                ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 40),
                  Image.asset(Images.creativeImage),
                  SizedBox(height: 10),
                  Text(
                    Strings.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 10),
                  Text(
                    Strings.subTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  SizedBox(height: 20),
                  FlatButton(
                    onPressed: (){
                      scrollToMax();
                    },
                    color: Theme.of(context).accentColor,
                    child: Text(
                      Strings.discoverButton,
                      style: Theme.of(context).textTheme.button,
                      ),
                      ),
                      ProjectTitleWidget(_opacityAnimation),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                            children: <Widget>[
                              ProjectsCardWidget(
                                imageLocation: Images.projectImage
                                ),
                              ProjectsCardWidget(
                                imageLocation: Images.projectImage
                                ),
                              ProjectsCardWidget(
                                imageLocation: Images.projectImage
                                ),
                              ProjectsCardWidget(
                                imageLocation: Images.projectImage
                                ),
                              ProjectsCardWidget(
                                imageLocation: Images.projectImage
                                ),
                            ],
                            ),
                        ),
                      )
               ],),
            ),
          ),
          
        ],
      )
    );
  }
}
