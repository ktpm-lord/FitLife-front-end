import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/repositories/message_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MessageRepositories)
class MessageRepositoriesImpl implements MessageRepositories {
  @override
  Future<SResult<List<Message>>> getMessage({int? chatId}) async {
    return const Either.right([]);
  }

  @override
  Future<SResult<String>> sendMessage({required List<String> message}) async {
    final body = {"message": message};

    /// Call
    return Either.right("Reply message ${message.first}");
    // return Either.left(AppException(message: "Error"));
  }

  @override
  Future<bool> clearConversationI() async {
    return true;
  }

  @override
  Future<bool> deleteMessage({required String messageId}) async {
    return true;
  }
}
