import 'package:chat_boggy/domain/entities/message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnwser {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https:yesno.wtf'));

  Future<Message> getAnswer() async {
    final response = await  _dio.get('/api');
    print(response.data);
    return Message(text: 'text', fromWho: FromWho.hers);
  }
}