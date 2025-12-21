import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/cubit/characters/harry_cubit.dart';
import 'package:harry_poter/uimodels/Persona_models.dart';

class HarryPoterScreen extends StatefulWidget {
  const HarryPoterScreen({super.key});

  @override
  State<HarryPoterScreen> createState() => _HarryPoterScreenState();
}


class _HarryPoterScreenState extends State<HarryPoterScreen> {

  final cubit = HarryCubit()
    ..getCharacters();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Poter Characters'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: BlocBuilder<HarryCubit, HarryState>(
            bloc: cubit,
            builder: (context, state) {
              if (state is Success) {
                final list = state.listmodels;
                return ListView.builder(
                    itemCount: list.length, itemBuilder: (context, index) {
                  final item = list[index];
                  return Column(
                    children: [
                      PersonaModels(model: item)
                    ],
                  );
                });
              }else if (state is Error){
                return Center(
                  child: Text('please try latter :('),
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          )
      ),
    );
  }
}
