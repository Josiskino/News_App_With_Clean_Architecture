//import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call({Params params});
}

/*class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class Params{
  final int id;

  Params({required this.id});
}*/
