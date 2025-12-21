import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/cubit/spells/spell_cubit.dart';
import 'package:harry_poter/uimodels/Spells_model.dart';

class HarryPoterSpellsScreen extends StatefulWidget {
  const HarryPoterSpellsScreen({super.key});


  @override
  State<HarryPoterSpellsScreen> createState() => _HarryPoterSpellsScreenState();
}

final cubit = SpellCubit()..getSpells();

class _HarryPoterSpellsScreenState extends State<HarryPoterSpellsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harry Poter Spells'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: BlocBuilder<SpellCubit, SpellState>(
          bloc: cubit,
          builder: (context, state) {
            if (state is SpellSuccess){
              final list = state.listmodels;
              return ListView.builder(
                itemCount: list.length, itemBuilder: (context, index) {
                final item = list[index];
                return Column(
                  children: [
                    SpellsModel(model: item)
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
