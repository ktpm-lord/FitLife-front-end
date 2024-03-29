import 'package:fit_life/mvvm/object/entity/chat/chat_thread.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_chat_data.freezed.dart';

@freezed
class AllChatData with _$AllChatData {
  const factory AllChatData({required List<ChatThread> chats}) = _AllChatData;
}
