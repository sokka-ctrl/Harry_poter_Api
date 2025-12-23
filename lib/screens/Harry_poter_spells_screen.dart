import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/bloc/spells/spell_bloc.dart';
import 'package:harry_poter/data/spells_repository.dart';
import 'package:harry_poter/uimodels/Spells_model.dart';

class HarryPoterSpellsScreen extends StatelessWidget {
  const HarryPoterSpellsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
      SpellBloc(SpellsRepository())..add(GetSpellsEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Harry Potter Spells'),
          backgroundColor: Colors.red,
        ),
        body: BlocBuilder<SpellBloc, SpellState>(
          builder: (context, state) {
            if (state is SpellLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is SpellSuccess) {
              return ListView.builder(
                itemCount: state.listModels.length,
                itemBuilder: (context, index) {
                  return SpellsModel(
                    model: state.listModels[index],
                  );
                },
              );
            }

            if (state is SpellError) {
              return Center(
                child: Text(state.message),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
