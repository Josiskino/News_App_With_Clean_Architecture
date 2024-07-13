import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

import '../../bloc/article/remote/remote_article_state.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text(
        "Daily News", 
        style: TextStyle(
          color: Colors.black,
        ),
    )
    );
  }

  _buildBody(){
    return BlocBuilder<RemoteArticlesBloc, RemoteArticlesState>(
      builder: (_, state){
        if(state is RemoteArticlesLoading){
          return const Center(child: CircularProgressIndicator());
        }
        if(state is RemoteArticlesError){
          return const Center(child: Icon(Icons.refresh),);
        }
        if (state is RemoteArticlesDone) {
          return ListView.builder(
            itemBuilder: (context, index){
              return ListTile(
                title: Text('$index'),
              );
            },
            itemCount: state.articles!.length,
            );
        }
        return const SizedBox();
      },
    );
  }
}


