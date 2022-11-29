import 'package:flutter/material.dart';
import 'package:fusion_charts_example/chart_widgets/other/pyramid_chart.dart';
import 'package:fusion_charts_example/chart_widgets/other/sparkline.dart';
import 'package:fusion_charts_example/chart_widgets/other/waterfall_or_cascade.dart';

import 'gant_chart.dart';

class OtherChartMenu extends StatefulWidget {
  const OtherChartMenu({Key? key}) : super(key: key);

  @override
  State<OtherChartMenu> createState() => _OtherChartMenuState();
}

class _OtherChartMenuState extends State<OtherChartMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Choose Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              InkWell(
                  child: SizedBox(height: 40,
                    child: InkWell(child: const Text("Gant Chart", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  const GantChart()))),
                  )),
              InkWell(
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                      child: const Text("Waterfall/Cascade",
                          style: TextStyle(fontSize: 16)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WaterfallOrCascade()));
                      }),
                ),
              ),
              InkWell(
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                      child: const Text("Pyramid Chart",
                          style: TextStyle(fontSize: 16)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PyramidChart()));
                      }),
                ),
              ),
              InkWell(
                child: SizedBox(
                  height: 40,
                  child: InkWell(
                      child: const Text("Sparkiline",
                          style: TextStyle(fontSize: 16)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sparkline()));
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
