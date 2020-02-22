import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Consumo extends StatefulWidget {
  @override
  _ConsumoState createState() => _ConsumoState.withSampleData();
}

class _ConsumoState extends State<Consumo> {
  final List<charts.Series> seriesList;
  final bool animate;

  _ConsumoState(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory _ConsumoState.withSampleData() {
    return new _ConsumoState(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: charts.TimeSeriesChart(
        seriesList,
        animate: animate,
        defaultRenderer: new charts.LineRendererConfig(
            includeArea: false,
            stacked: false
        ),
        // Optionally pass in a [DateTimeFactory] used by the chart. The factory
        // should create the same type of [DateTime] as the data provided. If none
        // specified, the default creates local date time.
        dateTimeFactory: const charts.LocalDateTimeFactory(),
        behaviors: [
          charts.SeriesLegend(
              showMeasures: true,
              desiredMaxColumns: 3,
              horizontalFirst: true,
              outsideJustification: charts.OutsideJustification.start,
              measureFormatter: (num valor) {
                if (valor != null)
                  return "${valor}%";
                return "";
              }
          ),
          charts.PanAndZoomBehavior(),
        ],
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesConsumo, DateTime>> _createSampleData() {
    final dataCozinha = [
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 10, 30, 0), 20),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 0, 0), 20),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 25, 0), 17),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 30, 0), 15),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 45, 0), 12),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 12, 0, 0), 10),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 13, 0, 0), 9.9),
    ];

    final dataQuiosque = [
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 10, 30, 0), 85),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 0, 0), 85),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 25, 0), 85),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 30, 0), 85),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 45, 0), 85),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 12, 0, 0), 85),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 13, 0, 0), 85),
    ];

    final dataEscritorio= [
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 10, 30, 0), 52),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 0, 0), 52),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 25, 0), 52),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 30, 0), 50.5),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 11, 45, 0), 50.5),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 12, 0, 0), 50.5),
      new TimeSeriesConsumo(new DateTime(2020, 2, 20, 13, 0, 0), 50.5),

    ];

    return [
      new charts.Series<TimeSeriesConsumo, DateTime>(
        id: 'Cozinha',
        colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
        domainFn: (TimeSeriesConsumo consumo, _) => consumo.time,
        measureFn: (TimeSeriesConsumo consumo, _) => consumo.consumo,
        data: dataCozinha,
      ),
      new charts.Series<TimeSeriesConsumo, DateTime>(
        id: 'Quiosque',
        colorFn: (_, __) => charts.MaterialPalette.lime.shadeDefault,
        domainFn: (TimeSeriesConsumo consumo, _) => consumo.time,
        measureFn: (TimeSeriesConsumo consumo, _) => consumo.consumo,
        data: dataQuiosque,
      ),
      new charts.Series<TimeSeriesConsumo, DateTime>(
        id: 'Escritorio',
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
        domainFn: (TimeSeriesConsumo consumo, _) => consumo.time,
        measureFn: (TimeSeriesConsumo consumo, _) => consumo.consumo,
        data: dataEscritorio
      ),
    ];
  }
}

/// Sample time series data type.
class TimeSeriesConsumo{
  final DateTime time;
  final double consumo;

  TimeSeriesConsumo(this.time, this.consumo);
}

