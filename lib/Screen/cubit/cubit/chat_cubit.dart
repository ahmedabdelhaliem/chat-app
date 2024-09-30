import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:untitled6/constans/constants.dart';
import 'package:untitled6/model/message.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  void sendMessage({required String message, required String email}) {
    messages.add({
      kMessage: message, // استخدام message بدلاً من messages
      kCreatedAt: DateTime.now(),
      'id': email
    });
  }

  void getMessage() {
    messages.orderBy(kCreatedAt).snapshots().listen((event) {
      List<Message> messageList = [];
      for (var doc in event.docs) {
        messageList.add(Message.fromJson(doc));
        print('Sucsse');
      }
      emit(ChatSuccess(messageList: messageList));
    });
  }
}
