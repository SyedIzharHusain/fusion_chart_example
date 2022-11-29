import 'package:flutter/material.dart';
import 'package:fusion_charts_example/chart_widgets/maps/trial_map.dart';
import 'package:fusion_charts_example/chart_widgets/maps/usa.dart';
import 'package:fusion_charts_example/chart_widgets/maps/worldmap.dart';


class WorldMapMenu extends StatefulWidget {
  const WorldMapMenu({Key? key}) : super(key: key);

  @override
  State<WorldMapMenu> createState() => _WorldMapMenuState();
}

class _WorldMapMenuState extends State<WorldMapMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Choose Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              InkWell(
                  child: SizedBox(height: 40,
                    child: InkWell(child: const Text("World Map", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  const WorldMap()))),
                  )),
              InkWell(
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                      child: const Text("Trial Map",
                          style: TextStyle(fontSize: 16)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrialMap()));
                      }),
                ),
              ),
              InkWell(
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                      child: const Text("USA",
                          style: TextStyle(fontSize: 16)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const USA()));
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
