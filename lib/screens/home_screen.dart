import 'package:flutter/material.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/search/search_delegate.dart';
import 'package:movies_app/widgets/card_swipper.dart';
import 'package:movies_app/widgets/movie_slider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      final moviesProvider = Provider.of<MoviesProvider>(context);

      return Scaffold(
        appBar: AppBar(
          title: const Text('Ammar Nagah'),
          actions: [
            IconButton(
              onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate()),
              icon: const Icon(Icons.search_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwipper(movies: moviesProvider.onDisplayMovies),
              const SizedBox(height: 14),
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Popular',
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),// Assuming 'moviesProvider.popularMovies' is a list
              MovieSlider(
                movies: moviesProvider.popularMovies, // Fetch a longer list from the API
                title: 'The Best',
                onNextPage: () => moviesProvider.getPopularMovies(), // Continue fetching more
              ),
            ],
          ),

        )

      );
    }
}
