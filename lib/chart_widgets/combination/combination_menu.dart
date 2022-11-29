import 'package:flutter/material.dart';
import 'package:fusion_charts_example/chart_widgets/combination/stacked_area_line_column.dart';
import 'package:fusion_charts_example/chart_widgets/combination/stacked_column_line_single_y_axis.dart';
import 'mscolumn3d_line_single_y_axis.dart';
import 'multiseries_dualcombo.dart';
import 'multiseries_singlecombo.dart';

class CombinationMenu extends StatefulWidget {
  const CombinationMenu({Key? key}) : super(key: key);

  @override
  State<CombinationMenu> createState() => _CombinationMenuState();
}

class _CombinationMenuState extends State<CombinationMenu> {
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
                    child: InkWell(child: const Text("Column-Line-Area (single)", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  const MultiSeriesSingleCombo()))),
                  )),
              InkWell(
                  child: SizedBox(height: 40,
                    child: InkWell(child: const Text("Column-Line-Area (dual)", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const  MultiSeriesDualCombo()))),
                  )),
              InkWell(
                  child: SizedBox(height: 40,
                    child: InkWell(child: const Text("Column3d-line-single y axis", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const  MSColumn3DLineSingleYAxis()))),
                  )),
              InkWell(
                  child: SizedBox(
                    height: 40,
                    child: InkWell(
                        child:
                        const Text("Stacked Column3-line-single y axis", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const StackedColumnLineSingleYAxis()))),
                  )),
              InkWell(
                  child: SizedBox(
                    height: 40,
                    child: InkWell(
                        child:
                        const Text("Stacked Area Line Column", style: TextStyle(fontSize: 16)),
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const StackedAreaLineColumn()))),
                  )),
            ],
          ),
        ));
  }
}
