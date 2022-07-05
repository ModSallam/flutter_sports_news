import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports_news_bloc_app/data/data.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsBloc({required NewsRepository newsRepository})
      : _newsRepository = newsRepository,
        super(NewsInitial()) {
    on<GetNews>(_onGetNews);
  }

  Future<void> _onGetNews(GetNews event, Emitter<NewsState> emit) async {
    emit(NewsLoading());

    final List<ArticleModel> articles = await _newsRepository.getEGSportsNews();

    emit(NewsLoaded(articles: articles));
  }
}
