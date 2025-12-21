import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/cubit/characters/harry_cubit.dart';
import 'package:harry_poter/cubit/houses/houses_cubit.dart';
import 'package:harry_poter/uimodels/Houses_models.dart';

class HarryPoterHousesScreen extends StatefulWidget {
  const HarryPoterHousesScreen({super.key});

  @override
  State<HarryPoterHousesScreen> createState() => _HarryPoterHousesScreenState();
}



class _HarryPoterHousesScreenState extends State<HarryPoterHousesScreen> {

  final cubit = HousesCubit()..getHouses();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Poter houses'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: BlocBuilder<HousesCubit, HousesState>(
          bloc: cubit,
          builder: (context, state) {
            if (state is HousesSuccess){
              final list = state.listmodels;
              return ListView.builder(
                  itemCount: list!.length, itemBuilder: (context, index) {
                final item = list[index];
                return Column(
                  children: [
                    HousesModels(model: item,)
                  ],
                );
              });
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

}
