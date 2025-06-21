import 'package:universal_html/html.dart' as html;

class PageStateManager {
  // useful for 'load' event of the browser, if the browser reloads, this will execute right after the page reload
  static browserEvent(String eventType, void function) {
    html.window.addEventListener(eventType, (event) {
      function;
    });
  }
}
