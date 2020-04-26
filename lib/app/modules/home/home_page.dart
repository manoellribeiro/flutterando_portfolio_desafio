import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando_desafios_portfolio/app/modules/home/components/headerItem/headerItem_widget.dart';
import 'package:flutterando_desafios_portfolio/app/modules/home/components/projectTitle/projectTitle_widget.dart';
import 'package:flutterando_desafios_portfolio/app/modules/home/components/projectsCard/projectsCard_widget.dart';
import 'package:flutterando_desafios_portfolio/app/shared/images.dart';
import 'package:flutterando_desafios_portfolio/app/shared/strings.dart';
import '../../app_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, AppController> with SingleTickerProviderStateMixin {

  ScrollController _scrollController;
  AnimationController _animationController;
  bool _showProjects = false;

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
          _showProjects = true;
      });
    }else if (_scrollController.offset < (_scrollController.position.maxScrollExtent/2)){
      setState(() {
        _showProjects = false;
        controller.isDarkModeEnabled = false;
      });
    }
  }

  scrollToMax(){
    _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
    setState(() {
      _showProjects = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).dividerColor
                      )
                      )
                      ),
          child: AppBar(
            brightness: Theme.of(context).brightness,
            titleSpacing: 200,
            title: Text(
              Strings.portfolioName,
              style: Theme.of(context).textTheme.subhead.copyWith(fontWeight: FontWeight.w700),
              ),
            elevation: 0,
            backgroundColor: Theme.of(context).appBarTheme.color,
            actions: <Widget>[
              HeaderItemWidget(title: Strings.work),
              HeaderItemWidget(title: Strings.about),
              HeaderItemWidget(title: Strings.products),
              HeaderItemWidget(title: Strings.contact),
              SizedBox(width: 200)
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
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
                      ProjectTitleWidget(_showProjects),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                            children: <Widget>[
                              ProjectsCardWidget(
                                padding: 100,
                                showProjects: _showProjects,
                                duration: 1000,
                                imageLocation: Images.projectImage1
                                ),
                              ProjectsCardWidget(
                                padding: 200,
                                showProjects: _showProjects,
                                duration: 1100,
                                imageLocation: Images.projectImage2
                                ),
                              ProjectsCardWidget(
                                padding: 300,
                                showProjects: _showProjects,
                                duration: 1200,
                                imageLocation: Images.projectImage3
                                ),
                              ProjectsCardWidget(
                                padding: 400,
                                showProjects: _showProjects,
                                duration: 1300,
                                imageLocation: Images.projectImage4
                                ),
                              ProjectsCardWidget(
                                padding: 500,
                                showProjects: _showProjects,
                                duration: 1400,
                                imageLocation: Images.projectImage5
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
