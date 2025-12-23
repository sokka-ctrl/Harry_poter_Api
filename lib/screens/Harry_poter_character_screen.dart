import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/bloc/characters/harry_bloc.dart';
import 'package:harry_poter/data/character_repository.dart';
import 'package:harry_poter/uimodels/Persona_models.dart';

class HarryPoterScreen extends StatelessWidget {
  const HarryPoterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
      HarryBloc(Repository())..add(GetCharactersEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Harry Potter Characters'),
          backgroundColor: Colors.blue,
        ),
        body: BlocBuilder<HarryBloc, HarryState>(
          builder: (context, state) {
            if (state is HarryLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is HarrySuccess) {
              return ListView.builder(
                itemCount: state.listModels.length,
                itemBuilder: (context, index) {
                  return PersonaModels(
                    model: state.listModels[index],
                  );
                },
              );
            }

            if (state is HarryError) {
              return const Center(
                child: Text('Please try later :('),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
