import 'dart:html';
import 'package:google_charts/google_charts.dart';

void main(){
    LineChart.load().then((_){
    var data = arrayToDataTable([
      ['Time', 'Flens', 'Dithmarscher'],
      ['18:00',  1.2,      2.0],
      ['18:20',  1.6,      1.8],
      ['18:40',  1.8,      1.6],
      ['18:50',  2.0,      1.2]
    ]);

    var options = {
      'curveType': 'function',
      'width': 'auto',
      'background': 'dimgray',
      'legend': { 'position': 'bottom' }
    };

    var chart = new LineChart(document.getElementById('hopfendiagram'));
    chart.draw(data,options);
  });

/*
  var data = new DataTable();
  data.addColumn('number','Flens');
  data.addColumn('number','Carlsberg');
  data.addColumn('number','Dithmarscher');
  data.addRows([
    ['18:00',1.2,1.4,1.6],
    ['18:20',1.8,2.8,0.8],
    ['18:40',0.6,2.6,3.6]
  ]);

  var options = {
    'curveType': 'function',
    'width': '100%',
    'legend': { 'position': 'bottom' }
  };

  var chart = new LineChart(document.getElementById('hopfendiagram'));

  chart.draw(data,options);
*/

}
