import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart' as intl;
import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
// import 'package:glamgear/main.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:developer' as developer;

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );
  // int _page = 0;
  // final _dateTimeFormatter = DateTimeFormatter();
  final _dialogUncommon = DialogUncommon();

  @override
  void initState() {
    super.initState();
    _loadMessages();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _dialogUncommon.showAutoDismissDialog(context, 'Coming soon...',
          CupertinoIcons.settings, Colors.blueAccent);
    });
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: RetainTextScaleWrapper(child: Text('Photo')),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: RetainTextScaleWrapper(child: Text('File')),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: RetainTextScaleWrapper(child: Text('Cancel')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;
      final fileUri = Uri.file(localPath);

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      // await OpenFilex.open(localPath);
      await launchUrl(fileUri);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  // void _loadMessages() async {
  //   try {
  //     // final response =
  //     //     await rootBundle.loadString('assets/sample_messages/messages.json');
  //     // final messages = (jsonDecode(response) as List)
  //     //     .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
  //     //     .toList();

  //     final response =
  //         await rootBundle.loadString('assets/sample_messages/messages.json');
  //     final List<dynamic> messageList = jsonDecode(response);

  //     final messages = messageList
  //         .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
  //         .toList();

  //     developer.log(messages.toList().toString());

  //     setState(() {
  //       _messages = messages;
  //     });
  //   } catch (e) {
  //     developer.log('Error loading messages: $e');
  //   }
  // }

  void _loadMessages() async {
    try {
      final response =
          await rootBundle.loadString('assets/sample_messages/messages1.json');
      final List<dynamic> messageList = jsonDecode(response);

      final messages = messageList
          .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
          .toList();

      setState(() {
        _messages = messages;
      });
    } catch (e) {
      developer.log('Error loading messages: $e');
    }
  }

  // Future<void> _handleEndReached() async {
  //   final uri = Uri.parse(
  //     'https://api.instantwebtools.net/v1/passenger?page=$_page&size=20',
  //   );
  //   final response = await http.get(uri);
  //   final json = jsonDecode(response.body) as Map<String, dynamic>;
  //   final data = json['data'] as List<dynamic>;
  //   final messages = data
  //       .map(
  //         (e) => types.TextMessage(
  //           author: _user,
  //           id: e['_id'] as String,
  //           text: e['name'] as String,
  //         ),
  //       )
  //       .toList();
  //   setState(() {
  //     _messages = [..._messages, ...messages];
  //     _page = _page + 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    MediaQuery.of(context).size.width <= 800;
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1,
          ),
          top: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.red.withValues(alpha: 0.5),
            width: 1,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: kIsWeb ? false : true,
          automaticallyImplyLeading: false,
          leadingWidth: isExtraSmallScreen
              ? 50
              : kIsWeb
                  ? 0
                  : isExtraSmallScreen
                      ? 50
                      : isSmallScreen
                          ? 50
                          : isMediumScreen
                              ? 70
                              : isLargeScreen
                                  ? 100
                                  : 200,
          titleSpacing: isExtraSmallScreen
              ? 0
              : isSmallScreen
                  ? kIsWeb
                      ? 0
                      : 0
                  : isMediumScreen
                      ? 0
                      : isLargeScreen
                          ? 100
                          : 200,
          forceMaterialTransparency: true,
          // backgroundColor: colorScheme.surfaceContainerHighest,
          title: Wrap(
            spacing: 4.0,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Builder(builder: (context) {
                String route = GoRouterState.of(context).uri.toString();
                return Visibility(
                  visible: (GoRouter.of(context).canPop() &&
                      !(route.contains("chat-b") || route.contains("chat-pt"))),
                  child: IconButton(
                    icon: Icon(CupertinoIcons.chevron_left),
                    onPressed: () {
                      if (GoRouter.of(context).canPop()) {
                        GoRouter.of(context).pop();
                      }
                    },
                  ),
                );
              }),
              SizedBox(
                width: 4.0,
              ),
              RetainTextScaleWrapper(
                child: Text(
                  'Chats',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ), // Optional title for the app bar
        ),
        body: Container(
          decoration: BoxDecoration(color: colorScheme.surfaceContainerHighest),
          padding: isSmallScreen
              ? const EdgeInsets.only(left: 0, right: 0)
              : isMediumScreen
                  ? const EdgeInsets.only(left: 70, right: 70)
                  : isLargeScreen
                      ? const EdgeInsets.only(left: 100, right: 100)
                      : const EdgeInsets.only(left: 200, right: 200),
          child: ScaffoldMessenger(
            child: RetainTextScaleWrapper(
              child: Chat(
                scrollPhysics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                dateLocale: 'en_US',
                timeFormat: intl.DateFormat('hh:mm a'),
                messages: _messages,
                onAttachmentPressed: _handleAttachmentPressed,
                onMessageTap: _handleMessageTap,
                onPreviewDataFetched: _handlePreviewDataFetched,
                onSendPressed: _handleSendPressed,
                showUserAvatars: true,
                showUserNames: false,
                user: _user,
                theme: DefaultChatTheme(
                    secondaryColor: isDarkMode
                        ? Colors.grey.shade800.withValues(alpha: 0.8)
                        : Colors.grey.shade100,
                    receivedMessageBodyTextStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: isDarkMode
                          ? const Color.fromARGB(215, 255, 255, 255)
                          : Colors.black87.withValues(alpha: 0.8),
                      letterSpacing: 0.75,
                    ),
                    sentMessageBodyTextStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: isDarkMode
                          ? const Color.fromARGB(215, 255, 255, 255)
                          : const Color.fromARGB(235, 255, 255, 255),
                      letterSpacing: 0.75,
                    ),
                    backgroundColor: isDarkMode
                        ? const Color.fromARGB(35, 0, 0, 0)
                        : Colors.grey.shade400.withValues(alpha: 0.35),
                    deliveredIcon: const Icon(Icons.check_circle),
                    inputPadding: const EdgeInsets.all(8.0),
                    inputTextColor: isDarkMode
                        ? const Color.fromARGB(215, 255, 255, 255)
                        : Colors.black87,
                    inputTextStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.75,
                    ),
                    inputBorderRadius:
                        const BorderRadius.vertical(top: Radius.circular(0)),
                    messageInsetsHorizontal: 10,
                    messageInsetsVertical: 8,
                    dateDividerMargin: const EdgeInsets.only(bottom: 10, top: 10),
                    inputBackgroundColor: isDarkMode
                        ? Colors.grey.shade800.withValues(alpha: 0.45)
                        : Colors.grey.shade100,
                    inputTextDecoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        isCollapsed: true)),
                scrollToUnreadOptions: const ScrollToUnreadOptions(
                  lastReadMessageId: 'lastReadMessageId',
                  scrollOnOpen: true,
                ),
                // onEndReached: _handleEndReached,//uncomment to test previous chat
              ),
            ),
          ),
      
          // SingleChildScrollView(
          //   child: Center(
          //     child: Column(
          //       children: [
          //         SizedBox(
          //           width: double.infinity,
          //           height: 1000,
          //           child: Padding(
          //             padding: isSmallScreen
          //                 ? const EdgeInsets.only(
          //                     top: 10.0,
          //                     right: 10.0,
          //                     bottom: 15.0,
          //                     left: 10.0)
          //                 : isMediumScreen
          //                     ? const EdgeInsets.only(
          //                         top: 10.0,
          //                         right: 70.0,
          //                         bottom: 15.0,
          //                         left: 70.0)
          //                     : isLargeScreen
          //                         ? const EdgeInsets.only(
          //                             top: 10.0,
          //                             right: 100.0,
          //                             bottom: 15.0,
          //                             left: 100.0)
          //                         : const EdgeInsets.only(
          //                             top: 10.0,
          //                             right: 200.0,
          //                             bottom: 15.0,
          //                             left: 200.0),
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 color: customTheme?.containerBackgroundColor,
          //                 borderRadius:
          //                     BorderRadius.circular(4.0), // Border radius
          //                 border: Border.all(
          //                     color: Colors.transparent), // Border color
          //               ),
          //               padding: const EdgeInsets.all(15.0),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

// For the testing purposes, you should probably use https://pub.dev/packages/uuid.
// String randomString() {
//   final random = Random.secure();
//   final values = List<int>.generate(16, (i) => random.nextInt(255));
//   return base64UrlEncode(values);
// }
