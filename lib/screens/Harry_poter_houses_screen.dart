import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_poter/bloc/houses/houses_bloc.dart';
import 'package:harry_poter/data/houses_repository.dart';
import 'package:harry_poter/uimodels/Houses_models.dart';

class HarryPoterHousesScreen extends StatelessWidget {
  const HarryPoterHousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
      HousesBloc(HousesRepository())..add(GetHousesEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Harry Potter Houses'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: BlocBuilder<HousesBloc, HousesState>(
          builder: (context, state) {
            if (state is HousesLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is HousesSuccess) {
              return ListView.builder(
                itemCount: state.listModels.length,
                itemBuilder: (context, index) {
                  return HousesModels(
                    model: state.listModels[index],
                  );
                },
              );
            }

            if (state is HousesError) {
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
