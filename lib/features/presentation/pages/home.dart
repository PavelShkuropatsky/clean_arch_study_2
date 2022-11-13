import 'package:clean_arch_study_2/core/service_locator.dart';
import 'package:clean_arch_study_2/features/presentation/states/home_state.dart';
import 'package:clean_arch_study_2/features/presentation/widgets/day_info.dart';
import 'package:clean_arch_study_2/features/presentation/widgets/double_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final _latController = TextEditingController();
  late final _lonController = TextEditingController();

  late HomeState _homeState;

  @override
  void initState() {
    super.initState();

    _homeState = sl();
  }

  @override
  void dispose() {
    _latController.dispose();
    _lonController.dispose();

    super.dispose();
  }

  _getDayInfo() {
    final lat = double.tryParse(_latController.text) ?? 0;
    final lon = double.tryParse(_lonController.text) ?? 0;

    _homeState.getDay(latitude: lat, longitude: lon);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    DoubleField(hintText: 'Latitude', controller: _latController),
                    const SizedBox(width: 20),
                    DoubleField(hintText: 'Longitude', controller: _lonController),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: _getDayInfo, child: const Text('Get info')),
                Observer(builder: (_) {
                  if (_homeState.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final day = _homeState.day;
                  if (day == null) {
                    return Container();
                  }

                  return DayInfo(day: day);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}