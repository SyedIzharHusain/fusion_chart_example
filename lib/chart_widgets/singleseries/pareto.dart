import 'package:flutter/material.dart';
import 'package:flutter_fusioncharts/flutter_fusioncharts.dart';
import '../../chartdata.dart';
import '../../constants.dart';

class Pareto extends StatefulWidget {
  const Pareto({super.key});

  @override
  State<Pareto> createState() => _ParetoState();
}

class _ParetoState extends State<Pareto> {
  late FusionCharts _fusionChart2D;
  late FusionCharts _fusionChart3D;



  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();

    Map<String, dynamic> chart = {
      "caption": "Android Distribution",
      "subCaption": "subCaption",
      "showlegend": "1",
      "showpercentvalues": "1",
      "legendPosition": "right",
      "plothovereffect": "1",
      "defaultcenterlabel": "Android Deristibution",
      "aligncaptionwithcanvas": "0",
      "captionpadding": "0",
      "decimals": "1",
      "plottooltext":
      "<b>\$percentValue</b> of our Android users are on <b>\$label</b>",
      "theme": "fusion",
      "centerLabel": "# Users: \$value",
      "baseFontSize": "30px",
      "captionFontSize": "30px",
    };



    Map<String, dynamic> dataSource = {"chart": chart, "data": ChartData.chartData2};

    _fusionChart2D = FusionCharts(
        dataSource: dataSource,
        type: "pareto2d",
        width: "100%",
        height: "100%",
        licenseKey: licenseKey);
    _fusionChart3D = FusionCharts(
        dataSource: dataSource,
        type: "pareto3d",
        width: "100%",
        height: "100%",
        licenseKey: licenseKey);
  }

  void callBackFromPlugin(arg1, arg2) {
    print('Back to consumer: $arg1 , $arg2');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Fusion Charts - Pareto'),
        ),
        body: Column(
          children: [
            Expanded(child: _fusionChart2D),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Pareto2D'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: _fusionChart3D),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Pareto3D'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
