// import 'dart:io' if (dart.library.html) 'dart:html'
//     as html; // Platform specific import

import 'dart:async';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cstm_drpd_decor.dart';
import 'package:glamgear/internal/core/products_pages/prdct_vrnt.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_admin_data.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:glamgear/dialog/dlog_cmon.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'package:glamgear/internal/animations/dlog_uncmon.dart';
import 'dart:developer' as developer;

import 'package:glamgear/main.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AddProducts extends ConsumerStatefulWidget {
  const AddProducts({super.key});

  @override
  ConsumerState<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends ConsumerState<AddProducts> {
  List<PlatformFile> _selectedImages = [];
  PlatformFile? _selectedImage;

  CategoryList? _selectedCategory;
  JewTypeList? _selectedJewType;
  KaratList? _selectedKarat;

  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _jewTypeController = TextEditingController();
  final TextEditingController _karatController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productWeightController =
      TextEditingController();
  final TextEditingController _labelSpecsController = TextEditingController();
  final TextEditingController _valueSpecsController = TextEditingController();
  final TextEditingController _originalPriceController =
      TextEditingController();
  final TextEditingController _discountedPriceController =
      TextEditingController();
  final TextEditingController _differencePriceController =
      TextEditingController();
  final TextEditingController _actualPercentController =
      TextEditingController();
  final TextEditingController _roundedPercentController =
      TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  final TextEditingController _promoTagController = TextEditingController();
  final NumberFormat _formatter = NumberFormat('#,###');
  bool _isCalculating = false;
  final _scrollController = ScrollController();
  // bool _showButton = false;
  // bool _scrollToTop = true;
  Timer? _debounce;

  bool _isAvailable = true;
  final _wYSIWYGTextEditorController = QuillController.basic();
  // final QuillController _wYSIWYGTextEditorController = () {
  //   return QuillController.basic(
  //       config: QuillControllerConfig(
  //           clipboardConfig: QuillClipboardConfig(
  //               enableExternalRichPaste: true,
  //               onImagePaste: (imageBytes) async {
  //                 if (kIsWeb) {
  //                   // Step 1: Convert the Uint8List to a Base64 String (for local preview)
  //                   String base64Image = base64Encode(imageBytes);
  //                   String imageUrl = 'data:image/png;base64,$base64Image';

  //                   // Step 2 (Optional): Upload to a server instead
  //                   // String imageUrl = await uploadImageToServer(imageBytes);
  //                   return imageUrl;
  //                 } else {
  //                   // Save the image somewhere and return the image URL that will be
  //                   // stored in the Quill Delta JSON (the document).
  //                   final newFileName =
  //                       'image-file-${DateTime.now().toIso8601String()}.png';
  //                   final newPath = path.join(
  //                     Directory.systemTemp.path,
  //                     newFileName,
  //                   );
  //                   final file = await File(
  //                     newPath,
  //                   ).writeAsBytes(imageBytes, flush: true);
  //                   return file.path;
  //                 }
  //               })));
  // }();

  ///Map of font families in string
  final Map<String, String> _fontFamilies = {
    'Roboto': 'roboto',
    'Open Sans': 'open-sans',
    'Lato': 'lato',
    'Montserrat': 'montserrat',
    'Roboto Condensed': 'roboto-condensed',
    'Oswald': 'oswald',
    'Poppins': 'poppins',
    'Slabo 27px': 'slabo-27px',
    'NotoSans': 'noto-sans',
    'Roboto Mono': 'roboto-mono',
    'Merriweather': 'merriweather',
    'Clear': 'Clear'
  };

  final List<String> _imageFileExtensions = [
    '.jpeg',
    '.jpg',
    '.png',
    // '.gif', //depending on them
    // '.webp',
    // '.tif',
    // '.heic'
  ];

  // List<String> _specifications = [
  //   // '{"label": "Product count", "value": "1", "date_created": "1998-01-02 12:00:00Z"}'
  // ];

  final _dialogCommon = DialogCommon();
  final _dialogUncommon = DialogUncommon();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  String? _concatSpecsData;
  final _keyLookupFN = FocusNode();

  // List<PlatformFile> images = [];
  // PlatformFile? selectedImage;

  // Future<void> _pickImage() async {
  //   final result = await FilePicker.platform.pickFiles(
  //       allowMultiple: true, type: FileType.custom, allowedExtensions: ['png']);
  //   if (result != null) {
  //     setState(() {
  //       images = result.files;
  //     });
  //   }
  // }

  // // Widget _buildImage(PlatformFile image) {
  // //   // Handle image display based on PlatformFile properties (e.g., path, name)
  // //   // You might need to use a network image loader or a custom method to display the image
  // //   // based on the PlatformFile information

  // //   return Text(image.name); // Replace with actual image display logic
  // // } //working but only file name preview

  // Widget _buildImage(PlatformFile image) {
  //   return InkWell(
  //     onTap: () {
  //       setState(() {
  //         selectedImage = image;
  //       });
  //     },
  //     child: Container(
  //       width: 100,
  //       height: 100,
  //       decoration: BoxDecoration(
  //         border:
  //             selectedImage == image ? Border.all(color: Colors.blue) : null,
  //         image: DecorationImage(
  //           image: MemoryImage(image.bytes!),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Future<void> _retrieveImageSize() async {
    // final int maxSizeInBytes = 5 * 1024; // 5 mb limit
    for (var image in _selectedImages) {
      int fileSize = 0;

      if (image.bytes != null) {
        // On web, use bytes to get the file size
        fileSize = image.bytes!.lengthInBytes;
      }
      // else if (image.path != null) {
      //   // On mobile/desktop, use the path to get the file size
      //   html.File file = html.File(image.path!);
      //   fileSize = await file.length();
      // }

      // Convert to kilobytes (KB) and megabytes (MB).
      double fileSizeInKB = fileSize / 1024;
      double fileSizeInMB = fileSizeInKB / 1024;

      developer.log('Image size: $fileSizeInKB KB');
      developer.log('Image size: $fileSizeInMB MB');

      // Check if file size is within the allowed limit
      // if (fileSize <= maxSizeInBytes) {// if I need to limit the image size
      //   validImages.add(image); // Add to valid images list
      //   totalSize += fileSize;  // Update the total size
      // } else {
      //   developer.log('${image.name} is too large (${fileSize / (1024 * 1024)} MB), skipping.');
      // }
    }
  }

  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'jpeg'],
    );

    if (result != null) {
      setState(() {
        _selectedImages = result.files;
      });

      await _retrieveImageSize();
    }
  }

  Future<void> _removeImage(PlatformFile image) async {
    setState(() {
      _selectedImages.remove(image);
    });

    await _retrieveImageSize();
  }

  Widget _buildImage(PlatformFile image) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedImage = image;
        });
        _showImageDialog();
      },
      child: Container(
        decoration: BoxDecoration(
            border: _selectedImage == image
                ? Border.all(color: Colors.blue)
                : null),
        child: Stack(
          children: [
            Image.memory(
              image.bytes!,
              width: 100,
              height: 100,
            ), // Replace with your image display logic
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(50), // Adjust radius as needed
                  color:
                      Colors.black26.withValues(alpha: 0.4), // Background color
                ),
                padding: const EdgeInsets.all(2),
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => _removeImage(image),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        final Brightness brightness = MediaQuery.of(context).platformBrightness;
        final bool isDarkMode = brightness == Brightness.dark;
        return Dialog(
          insetPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 32), // Adjust this value for the desired margin
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
                  borderRadius:
                      BorderRadius.circular(4), // Optional rounded corners
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: _buildImageName(_selectedImage)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Image.memory(
                          _selectedImage!.bytes!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RetainTextScaleWrapper(
                            child: Text(
                              'OK',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(CupertinoIcons.xmark),
                  onPressed: () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImageName(PlatformFile? image) {
    // Handle image display based on PlatformFile properties (e.g., path, name)
    // You might need to use a network image loader or a custom method to display the image
    // based on the PlatformFile information

    return RetainTextScaleWrapper(
      child: Text(
        image!.name,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    ); // Replace with actual image display logic
  } //working but only file name preview

  void _onOriginalPriceChanged() {
    if (_isCalculating) return;
    _isCalculating = true;
    _formatOriginalPrice();
    _calculateDifference();
    _calculateActualPercent();
    _calculateRoundingPercent();
    _isCalculating = false;
  }

  void _onDiscountedPriceChanged() {
    if (_isCalculating) return;
    _isCalculating = true;
    _formatDiscountedPrice();
    _calculateDifference();
    _calculateActualPercent();
    _calculateRoundingPercent();
    _isCalculating = false;
  }

  void _formatOriginalPrice() {
    String text = _originalPriceController.text.replaceAll(',', '');
    if (text.isNotEmpty) {
      String formatted = _formatter.format(int.parse(text));
      _originalPriceController.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    }
  }

  void _formatDiscountedPrice() {
    String text = _discountedPriceController.text.replaceAll(',', '');
    if (text.isNotEmpty) {
      String formatted = _formatter.format(int.parse(text));
      _discountedPriceController.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    }
  }

  void _formatStock() {
    String text = _stockController.text.replaceAll(',', '');
    if (text.isNotEmpty) {
      String formatted = _formatter.format(int.parse(text));
      _stockController.value = TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    }
  }

  void _calculateDifference() {
    final String text1 = _originalPriceController.text.replaceAll(',', '');
    final String text2 = _discountedPriceController.text.replaceAll(',', '');

    if (text1.isNotEmpty && text2.isNotEmpty) {
      try {
        final int originalPrice = int.parse(text1);
        final int discountedPrice = int.parse(text2);

        final int difference = originalPrice - discountedPrice;

        final String formattedDifference = _formatter.format(difference);

        _differencePriceController.value = TextEditingValue(
          text: formattedDifference,
          selection:
              TextSelection.collapsed(offset: formattedDifference.length),
        );

        developer.log('Output: $formattedDifference');
      } catch (e) {
        developer.log('Error parsing numbers: $e');
      }
    } else {
      _differencePriceController.clear();
    }
  }

  void _calculateActualPercent() {
    final String text1 = _originalPriceController.text.replaceAll(',', '');
    final String text2 = _discountedPriceController.text.replaceAll(',', '');

    if (text1.isNotEmpty && text2.isNotEmpty) {
      try {
        final double startingPrice = double.parse(text1);
        final double discountedPrice = double.parse(text2);

        final double actualPercent =
            ((startingPrice - discountedPrice) / startingPrice) * 100;

        final String formattedPercent = '${actualPercent.toString()}%';

        _actualPercentController.value = TextEditingValue(
          text: formattedPercent,
          selection: TextSelection.collapsed(offset: formattedPercent.length),
        );

        developer.log('Output: $formattedPercent');
      } catch (e) {
        developer.log('Error parsing numbers: $e');
      }
    } else {
      _actualPercentController.clear();
    }
  }

  void _calculateRoundingPercent() {
    final String text1 = _originalPriceController.text.replaceAll(',', '');
    final String text2 = _discountedPriceController.text.replaceAll(',', '');

    if (text1.isNotEmpty && text2.isNotEmpty) {
      try {
        final double startingPrice = double.parse(text1);
        final double discountedPrice = double.parse(text2);

        final double actualPercent =
            ((startingPrice - discountedPrice) / startingPrice) * 100;

        final int roundedDouble = _roundToNearestWholeNumber(actualPercent);

        final String formattedPercent = '${roundedDouble.toString()}%';

        _roundedPercentController.value = TextEditingValue(
          text: formattedPercent,
          selection: TextSelection.collapsed(offset: formattedPercent.length),
        );

        developer.log('Output: $formattedPercent');
      } catch (e) {
        developer.log('Error parsing numbers: $e');
      }
    } else {
      _roundedPercentController.clear();
    }
  }

  int _roundToNearestWholeNumber(double value) {
    return (value * 100).round() / 100 > value.floor() + 0.5
        ? value.ceil()
        : value.floor();
  } //handling of the mathematical rounding rules of decimal

  // Future<void> _loadProdSpecsKey() async {
  //   ref.read(retrieveProductsProvider('api/postget/add_product_data', 'RETRIEVE_PROD_KEY_NAME'));
  // }

  EdgeInsetsGeometry _containerPadding(
      bool isExtraSmallScreen,
      bool isSmallScreen,
      bool isMediumScreen,
      isLargeScreen,
      bool isExtraLargeScreen) {
    return isExtraSmallScreen
        ? const EdgeInsets.only(top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
        : isSmallScreen
            ? const EdgeInsets.only(
                top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
            : isMediumScreen
                ? const EdgeInsets.only(
                    top: 10.0, right: 70.0, bottom: 5.0, left: 70.0)
                : isLargeScreen
                    ? const EdgeInsets.only(
                        top: 10.0, right: 100.0, bottom: 5.0, left: 100.0)
                    : isExtraLargeScreen
                        ? const EdgeInsets.only(
                            top: 10.0, right: 200.0, bottom: 5.0, left: 200.0)
                        : const EdgeInsets.only(
                            top: 10.0, right: 200.0, bottom: 5.0, left: 200.0);
  }

  EdgeInsetsGeometry _containerPaddingBottom(
      bool isExtraSmallScreen,
      bool isSmallScreen,
      bool isMediumScreen,
      isLargeScreen,
      bool isExtraLargeScreen) {
    return isExtraSmallScreen
        ? const EdgeInsets.only(top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
        : isSmallScreen
            ? const EdgeInsets.only(
                top: 10.0, right: 16.0, bottom: 5.0, left: 16.0)
            : isMediumScreen
                ? const EdgeInsets.only(
                    top: 10.0, right: 70.0, bottom: 5.0, left: 70.0)
                : isLargeScreen
                    ? const EdgeInsets.only(
                        top: 10.0, right: 100.0, bottom: 5.0, left: 100.0)
                    : isExtraLargeScreen
                        ? const EdgeInsets.only(
                            top: 10.0, right: 200.0, bottom: 10.0, left: 200.0)
                        : const EdgeInsets.only(
                            top: 10.0, right: 200.0, bottom: 10.0, left: 200.0);
  }

  // Future<void> insertBase64Image(DropItem file) async {
  //   try {
  //     // Convert the file to a Base64-encoded string
  //     // final bytes = await file.readAsBytes();
  //     // final base64String = base64Encode(bytes); // need to refactor

  //     // // Convert the file to a Base64-encoded string asynchronously
  //     final base64String =
  //         await compute(_convertToBase64, await file.readAsBytes());

  //     // Construct the Base64 image source
  //     final imageSource =
  //         'data:image/png;base64,$base64String'; // Adjust MIME type if necessary (e.g., `image/jpeg`)

  //     // Insert the image using the Base64 string
  //     _wYSIWYGTextEditorController.insertImageBlock(imageSource: imageSource);
  //   } catch (e) {
  //     // Handle any errors gracefully
  //     developer.log('Error inserting image: $e');
  //   }
  // }

  // Future<void> _insertBase64Image(DropItem file) async {
  //   try {
  //     // Read file bytes
  //     final bytes = await file.readAsBytes();

  //     // Base64 encoding in background isolate
  //     final base64String = await compute(_convertToBase64, bytes);

  //     // Construct Base64 image source
  //     final imageSource =
  //         'data:image/png;base64,$base64String'; // Adjust MIME type if necessary

  //     // Preload the image to cache it
  //     await _precacheImage(imageSource);

  //     // Insert image into the editor
  //     _wYSIWYGTextEditorController.insertImageBlock(imageSource: imageSource);
  //   } catch (e) {
  //     developer.log('Error inserting image: $e');
  //   }
  // }

  // // Helper function to encode bytes in background
  // String _convertToBase64(Uint8List bytes) => base64Encode(bytes);

  // // Helper function to preload the image
  // Future<void> _precacheImage(String base64ImageSource) async {
  //   final image = Image.memory(base64Decode(base64ImageSource.split(',')[1]));
  //   final completer = Completer<void>();
  //   image.image.resolve(const ImageConfiguration()).addListener(
  //     ImageStreamListener((_, __) {
  //       completer.complete();
  //     }),
  //   );
  //   await completer.future;
  // }

  OnDragDoneCallback get _onDragDone {
    return (details) async {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      final file = details.files.first;
      final isSupported =
          _imageFileExtensions.any((ext) => file.name.endsWith(ext));
      if (!isSupported) {
        // scaffoldMessenger.showSnackBar(
        //   SnackBar(
        //     duration: const Duration(milliseconds: 3000),
        //     content: Text(
        //       'Only images are supported right now: ${file.mimeType}, ${file.name}, ${file.path}, $imageFileExtensions',
        //       style: Theme.of(context)
        //           .textTheme
        //           .bodySmall
        //           ?.copyWith(fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // );
        _dialogUncommon.showAutoDismissDialog(
            context,
            'Only images are supported right now: ${file.mimeType}, ${file.name}, ${file.path}, $_imageFileExtensions',
            CupertinoIcons.exclamationmark_circle_fill,
            Colors.redAccent);
        return;
      }
      Future<int> fileSize = file.length();
      developer.log('File size: ${await fileSize / 1000 / 1000}');
      final isValidSize = 3 >= await fileSize / 1000 / 1000;
      if (!isValidSize) {
        if (mounted) {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              duration: const Duration(milliseconds: 3000),
              content: RetainTextScaleWrapper(
                child: Text(
                  'Only file size supported right now: Maximum of 3 MB',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
          return;
        }
      }

      // To get this extension function please import flutter_quill_extensions
      _wYSIWYGTextEditorController.insertImageBlock(
        imageSource: file.path,
      );
      // await insertBase64Image(file); // with flickering effect issue
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: RetainTextScaleWrapper(child: Text('Image is inserted.')),
        ),
      );
    };
  }

  // Future<void> _processQuillDelta(String quillDelta) async {
  //   // Parse the JSON string into a Dart object
  //   final List<Map<String, dynamic>> delta =
  //       List<Map<String, dynamic>>.from(jsonDecode(quillDelta));

  //   // Iterate through the delta to process image blobs
  //   for (var insert in delta) {
  //     if (insert.containsKey('insert') &&
  //         insert['insert'] is Map &&
  //         insert['insert'].containsKey('image')) {
  //       final String imageUrl = insert['insert']['image'];

  //       if (imageUrl.startsWith('blob:')) {
  //         // Fetch the image data
  //         final base64String = await _convertBlobToBase64(imageUrl);

  //         if (base64String != null) {
  //           // Replace the blob URL with the Base64 string
  //           insert['insert']['image'] =
  //               'data:image/png;base64,$base64String'; // Adjust MIME type if needed
  //         }
  //       }
  //     }
  //   }

  //   // Convert the updated delta back to JSON
  //   final updatedQuillDelta = jsonEncode(delta);
  //   developer.log(updatedQuillDelta);
  // }

  // // Helper function to fetch and convert a blob URL to Base64
  // Future<String?> _convertBlobToBase64(String blobUrl) async {
  //   try {
  //     // Fetch the image data from the blob URL
  //     final response = await http.get(Uri.parse(blobUrl));
  //     if (response.statusCode == 200) {
  //       // Convert the image bytes to Base64
  //       return base64Encode(response.bodyBytes);
  //     }
  //   } catch (e) {
  //     developer.log('Error fetching image: $e');
  //   }
  //   return null; // Return null if an error occurs
  // }

  Future<List<Map<String, dynamic>>> _getFormattedSpecsPair(
      BuildContext context) async {
    final prefs = await ref.read(sharedPrefFutureProvider.future);
    List<Map<String, String>> history = await prefs.getSpecsPair(
        ascending: false); // I will override the default true

    // Convert the dateTime string back to a DateTime object for each entry
    return history.map((entry) {
      return {
        'specsPair': entry['specsPair'],
        'dateTime': DateTime.parse(entry['dateTime']!)
      };
    }).toList();
  }

  Future<List<Map<String, dynamic>>> _getFormattedPromoTag(
      BuildContext context) async {
    final prefs = await ref.read(sharedPrefFutureProvider.future);
    List<Map<String, String>> history = await prefs.getPromotionalTags(
        ascending: false); // I will override the default true

    // Convert the dateTime string back to a DateTime object for each entry
    return history.map((entry) {
      return {
        'promoTag': entry['promoTag'],
        'dateTime': DateTime.parse(entry['dateTime']!)
      };
    }).toList();
  }

  Widget _populateSpecsPairs() {
    final specsPair = _getFormattedSpecsPair(context);
    final ThemeData theme = Theme.of(context);

    final sharedPrefs = ref.watch(sharedPrefProvider);
    return FutureBuilder(
      future: specsPair,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox();
        } else if (snapshot.hasError) {
          // return Text('Error: ${snapshot.error}');
          return SizedBox();
        } else {
          final specsData = snapshot.data as List<Map<String, dynamic>>;
          developer.log('Searched data: $specsData');
          return specsData.isEmpty
              ? SizedBox()
              : ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 100, maxHeight: 200),
                  child: ListView.builder(
                      itemCount: specsData.length,
                      itemBuilder: (context, index) {
                        final entry = specsData[index];
                        final text = entry['specsPair'];
                        return Column(
                          children: [
                            Opacity(
                              opacity: 0.1,
                              child: Divider(
                                thickness: 0.10,
                                height: 0.25,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 8.0),
                              title: text == null
                                  ? SizedBox()
                                  : RetainTextScaleWrapper(
                                      child: Text(
                                        text,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.normal),
                                      ),
                                    ),
                              trailing: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  setState(() {
                                    sharedPrefs.removeEachSpecsPair(text);
                                  });
                                },
                                icon: Icon(
                                  CupertinoIcons.xmark,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                );
        }
      },
    );
  }

  Widget _populatePromoTags() {
    final promoTags = _getFormattedPromoTag(context);
    final ThemeData theme = Theme.of(context);

    final sharedPrefs = ref.watch(sharedPrefProvider);
    return FutureBuilder(
      future: promoTags,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox();
        } else if (snapshot.hasError) {
          // return Text('Error: ${snapshot.error}');
          return SizedBox();
        } else {
          final tagData = snapshot.data as List<Map<String, dynamic>>;
          developer.log('Searched data: $tagData');
          return tagData.isEmpty
              ? SizedBox()
              : ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 100, maxHeight: 200),
                  child: ListView.builder(
                      itemCount: tagData.length,
                      itemBuilder: (context, index) {
                        final entry = tagData[index];
                        final text = entry['promoTag'];
                        return Column(
                          children: [
                            Opacity(
                              opacity: 0.1,
                              child: Divider(
                                thickness: 0.10,
                                height: 0.25,
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 8.0),
                              title: text == null
                                  ? SizedBox()
                                  : RetainTextScaleWrapper(
                                      child: Text(
                                        text,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.normal),
                                      ),
                                    ),
                              trailing: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  setState(() {
                                    sharedPrefs.removeEachPromoTag(text);
                                  });
                                },
                                icon: Icon(
                                  CupertinoIcons.xmark,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                );
        }
      },
    );
  }

  // void _listenToScrollEvents() {
  //   if (_debounce?.isActive ?? false) _debounce!.cancel();
  //   double scrollOffset = _scrollController.offset;

  //   _debounce = Timer(const Duration(milliseconds: 200), () {
  //     if (scrollOffset > 0 && !_showButton) {
  //       setState(() {
  //         _showButton = true;
  //         // _scrollToTop = false;
  //       });
  //     } else {
  //       setState(() {
  //         _showButton = true;
  //         // _scrollToTop = true;
  //       });
  //     }
  //   });
  //   // if (_debounce?.isActive ?? false) _debounce!.cancel();
  //   // final maxScroll = _scrollController.position.maxScrollExtent;
  //   // final currentScroll = _scrollController.offset;

  //   // if (currentScroll > maxScroll && currentScroll < maxScroll) {
  //   //   // Show the button when scroll is between 10% and 90%
  //   //   setState(() {
  //   //     _showButton = true;
  //   //     _scrollToTop =
  //   //         currentScroll > maxScroll / 2; // Decide direction based on midpoint
  //   //   });
  //   // } else {
  //   //   setState(() {
  //   //     // Hide the button when within 10% range of top or bottom
  //   //     _showButton = false;
  //   //   });
  //   // }

  //   // _debounce = Timer(const Duration(milliseconds: 200), () {
  //   //   final computeUnreachableScroll = MediaQuery.of(context).size.height -
  //   //       _scrollController.position.maxScrollExtent;
  //   //   setState(() {
  //   //     _scrollToTop = _scrollController.offset > 0;
  //   //     _showButton = true;
  //   //   });
  //   // });
  // }

  @override
  void initState() {
    super.initState();
    _originalPriceController.addListener(_onOriginalPriceChanged);
    _discountedPriceController.addListener(_onDiscountedPriceChanged);
    _stockController.addListener(_formatStock);
    // _loadProdSpecsKey();
    // _scrollController.addListener(_listenToScrollEvents);
  }

  @override
  void dispose() {
    _categoryController.dispose();
    _jewTypeController.dispose();
    _karatController.dispose();
    _productNameController.dispose();
    _productWeightController.dispose();
    _labelSpecsController.dispose();
    _valueSpecsController.dispose();
    _originalPriceController.dispose();
    _discountedPriceController.dispose();
    _differencePriceController.dispose();
    _actualPercentController.dispose();
    _roundedPercentController.dispose();
    _stockController.dispose();
    _promoTagController.dispose();
    _wYSIWYGTextEditorController.dispose();
    _originalPriceController.removeListener(_onOriginalPriceChanged);
    _discountedPriceController.removeListener(_onDiscountedPriceChanged);
    _stockController.removeListener(_formatStock);
    // _scrollController.removeListener(_listenToScrollEvents);
    _scrollController.dispose();
    _debounce?.cancel();
    _keyLookupFN.dispose();
    super.dispose();
  }

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
    final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
        MediaQuery.of(context).size.width <= 1280;
    final customTheme = Theme.of(context).extension<CustomTheme>();
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final ThemeData theme = Theme.of(context);

    final sharedPrefs = ref.watch(sharedPrefProvider);
    // final AsyncValue<ProductAdminData> prodAdminData = ref.watch(
    //     retAdminProdProvider('/api/postget/add_product_data', "DevQt",
    //         'RETRIEVE_COMP_PROD_INFO')); // check if the admin has draft data
    final AsyncValue<ProductKeyNames> prodAdminKNData = ref.watch(
        retrieveProductKeyProvider(
            '/api/postget/add_product_data', 'RETRIEVE_PROD_KEY_NAME'));

    // developer.log(
    //     'Product data: ${jsonEncode(prodAdminData.value?.toJson() ?? {})}'); // to format as JSON data with base64

    // final Map<String, dynamic>? json = jsonDecode(jsonEncode(prodAdminData.value
    //     ?.toJson())); // initializing as variable (Data model sa JSON data)

    // final ProductAdminData dataModel = ProductAdminData.fromJson(json ??
    //     {}); // initializing as variable (Data model as structure data within the model)

    // developer.log('Check JSON: ${json ?? {}}');
    // developer.log('Check data: $dataModel');

    return Scaffold(
      appBar: AppBar(
        elevation: 8,
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
                                : isExtraLargeScreen
                                    ? 200
                                    : 200,
        titleSpacing: isExtraSmallScreen
            ? 16
            : isSmallScreen
                ? kIsWeb
                    ? 16
                    : 16
                : isMediumScreen
                    ? 70
                    : isLargeScreen
                        ? 100
                        : isExtraLargeScreen
                            ? 200
                            : 200,
        forceMaterialTransparency: true,
        // backgroundColor: colorScheme.surfaceContainerHighest,
        title: RetainTextScaleWrapper(
          child: Text(
            'Add Products',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ), // Optional title for the app bar
      ),
      body: KeyboardListener(
        focusNode: _keyLookupFN,
        autofocus: true,
        onKeyEvent: (event) {
          if (event is KeyDownEvent &&
              event.logicalKey == LogicalKeyboardKey.end) {
            _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          } else if (event is KeyDownEvent &&
              event.logicalKey == LogicalKeyboardKey.home) {
            _scrollController.animateTo(
                _scrollController.position.minScrollExtent,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          }
        },
        child: Container(
          decoration: BoxDecoration(color: colorScheme.surfaceContainerHighest),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: _containerPadding(
                          isExtraSmallScreen,
                          isSmallScreen,
                          isMediumScreen,
                          isLargeScreen,
                          isExtraLargeScreen),
                      child: Container(
                        decoration: BoxDecoration(
                          color: customTheme?.containerBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          border: Border.all(
                              color: Colors.transparent), // Border color
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RetainTextScaleWrapper(
                              child: Text('Product Information',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RetainTextScaleWrapper(
                              child: Text('Product Name',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextFormField(
                                key: const ValueKey('name'),
                                controller: _productNameController,
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required';
                                  }

                                  // if (value.length < 6 && value != 'ad') {
                                  //   return 'Password must be at least 6 characters';
                                  // }
                                  return null;
                                },
                                style: TextStyle(
                                  color: isDarkMode
                                      ? const Color.fromARGB(215, 255, 255, 255)
                                      : Colors.black87,
                                  fontSize: isExtraSmallScreen
                                      ? 12
                                      : isSmallScreen
                                          ? 14
                                          : isMediumScreen
                                              ? 14
                                              : isLargeScreen
                                                  ? 14
                                                  : isExtraLargeScreen
                                                      ? 14
                                                      : 16,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.75,
                                ),
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: 'ex: Iphone Galaxy 1000 Pro',
                                  hintStyle: TextStyle(
                                    color: isDarkMode
                                        ? const Color.fromARGB(
                                            215, 255, 255, 255)
                                        : Colors.black54,
                                    fontSize: isExtraSmallScreen
                                        ? 12
                                        : isSmallScreen
                                            ? 14
                                            : isMediumScreen
                                                ? 14
                                                : isLargeScreen
                                                    ? 14
                                                    : isExtraLargeScreen
                                                        ? 14
                                                        : 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.75,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.close),
                                    onPressed: () {
                                      _productNameController.clear();
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              spacing:
                                  20.0, // Horizontal space between children
                              runSpacing: 20.0, // Vertical space between lines
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RetainTextScaleWrapper(
                                      child: Text('Product Category',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    const SizedBox(height: 16),
                                    DropdownButtonFormField<CategoryList>(
                                      elevation: 0,
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.white.withAlpha(240)
                                            : Colors.black87,
                                        fontSize: isExtraSmallScreen
                                            ? 12
                                            : isSmallScreen
                                                ? 14
                                                : isMediumScreen
                                                    ? 14
                                                    : isLargeScreen
                                                        ? 14
                                                        : isExtraLargeScreen
                                                            ? 14
                                                            : 16,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0.75,
                                      ),
                                      hint: RetainTextScaleWrapper(
                                        child: Text(
                                          'Category',
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? Colors.white.withAlpha(240)
                                                : Colors.black54,
                                            fontSize: isExtraSmallScreen
                                                ? 12
                                                : isSmallScreen
                                                    ? 14
                                                    : isMediumScreen
                                                        ? 14
                                                        : isLargeScreen
                                                            ? 14
                                                            : isExtraLargeScreen
                                                                ? 14
                                                                : 16,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 0.75,
                                          ),
                                        ),
                                      ),
                                      dropdownColor: isDarkMode
                                          ? Colors.grey.shade900
                                          : Colors.grey.shade300,
                                      decoration: const InputDecoration(
                                        fillColor: Colors.transparent,
                                        border: OutlineInputBorder(),
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 12.0),
                                      ),
                                      value: _selectedCategory,
                                      items: CategoryList.values
                                          .map<DropdownMenuItem<CategoryList>>(
                                        (CategoryList category) {
                                          return DropdownMenuItem<CategoryList>(
                                              value: category,
                                              child: Row(
                                                children: [
                                                  Icon(category.icon),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  RetainTextScaleWrapper(
                                                    child: Text(
                                                      category.label.keys
                                                          .toList()
                                                          .join(),
                                                      style: TextStyle(
                                                        color: isDarkMode
                                                            ? const Color
                                                                .fromARGB(215,
                                                                255, 255, 255)
                                                            : Colors.black87,
                                                        fontSize: isExtraSmallScreen
                                                            ? 12
                                                            : isSmallScreen
                                                                ? 14
                                                                : isMediumScreen
                                                                    ? 14
                                                                    : isLargeScreen
                                                                        ? 14
                                                                        : isExtraLargeScreen
                                                                            ? 14
                                                                            : 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        letterSpacing: 0.75,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ));
                                        },
                                      ).toList(),
                                      onChanged:
                                          (CategoryList? selectedCategory) {
                                        setState(() {
                                          _selectedCategory = selectedCategory;
                                        });
                                        developer.log(
                                            'Selected: ${selectedCategory!.label.values.join()}');
                                      },
                                    ),
                                  ],
                                ),
                                if (_selectedCategory == CategoryList.jewelry)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RetainTextScaleWrapper(
                                        child: Text('Material Type',
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ),
                                      const SizedBox(height: 8),
                                      DropdownButtonFormField<JewTypeList>(
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white.withAlpha(240)
                                              : Colors.black87,
                                          fontSize: isExtraSmallScreen
                                              ? 12
                                              : isSmallScreen
                                                  ? 14
                                                  : isMediumScreen
                                                      ? 14
                                                      : isLargeScreen
                                                          ? 14
                                                          : isExtraLargeScreen
                                                              ? 14
                                                              : 16,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 0.75,
                                        ),
                                        hint: RetainTextScaleWrapper(
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                              color: isDarkMode
                                                  ? Colors.white.withAlpha(240)
                                                  : Colors.black54,
                                              fontSize: isExtraSmallScreen
                                                  ? 12
                                                  : isSmallScreen
                                                      ? 14
                                                      : isMediumScreen
                                                          ? 14
                                                          : isLargeScreen
                                                              ? 14
                                                              : isExtraLargeScreen
                                                                  ? 14
                                                                  : 16,
                                              fontWeight: FontWeight.normal,
                                              letterSpacing: 0.75,
                                            ),
                                          ),
                                        ),
                                        dropdownColor: isDarkMode
                                            ? Colors.grey.shade900
                                            : Colors.grey.shade300,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5.0, horizontal: 12.0),
                                        ),
                                        value: _selectedJewType,
                                        items: JewTypeList.values
                                            .map<DropdownMenuItem<JewTypeList>>(
                                          (JewTypeList jewelry) {
                                            return DropdownMenuItem<
                                                    JewTypeList>(
                                                value: jewelry,
                                                child: RetainTextScaleWrapper(
                                                  child: Text(
                                                    jewelry.label,
                                                    style: TextStyle(
                                                      color: isDarkMode
                                                          ? const Color
                                                              .fromARGB(215,
                                                              255, 255, 255)
                                                          : Colors.black87,
                                                      fontSize: isExtraSmallScreen
                                                          ? 12
                                                          : isSmallScreen
                                                              ? 14
                                                              : isMediumScreen
                                                                  ? 14
                                                                  : isLargeScreen
                                                                      ? 14
                                                                      : isExtraLargeScreen
                                                                          ? 14
                                                                          : 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      letterSpacing: 0.75,
                                                    ),
                                                  ),
                                                ));
                                          },
                                        ).toList(),
                                        onChanged:
                                            (JewTypeList? selectedJewelryType) {
                                          setState(() {
                                            _selectedJewType =
                                                selectedJewelryType;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                if (_selectedCategory == CategoryList.jewelry)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RetainTextScaleWrapper(
                                        child: Text('Karat',
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ),
                                      const SizedBox(height: 8),
                                      DropdownButtonFormField<KaratList>(
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white.withAlpha(240)
                                              : Colors.black87,
                                          fontSize: isExtraSmallScreen
                                              ? 12
                                              : isSmallScreen
                                                  ? 14
                                                  : isMediumScreen
                                                      ? 14
                                                      : isLargeScreen
                                                          ? 14
                                                          : isExtraLargeScreen
                                                              ? 14
                                                              : 16,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 0.75,
                                        ),
                                        hint: RetainTextScaleWrapper(
                                          child: Text(
                                            'Karat',
                                            style: TextStyle(
                                              color: isDarkMode
                                                  ? Colors.white.withAlpha(240)
                                                  : Colors.black54,
                                              fontSize: isExtraSmallScreen
                                                  ? 12
                                                  : isSmallScreen
                                                      ? 14
                                                      : isMediumScreen
                                                          ? 14
                                                          : isLargeScreen
                                                              ? 14
                                                              : isExtraLargeScreen
                                                                  ? 14
                                                                  : 16,
                                              fontWeight: FontWeight.normal,
                                              letterSpacing: 0.75,
                                            ),
                                          ),
                                        ),
                                        dropdownColor: isDarkMode
                                            ? Colors.grey.shade900
                                            : Colors.grey.shade300,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5.0, horizontal: 12.0),
                                        ),
                                        value: _selectedKarat,
                                        items: KaratList.values
                                            .map<DropdownMenuItem<KaratList>>(
                                          (KaratList karat) {
                                            return DropdownMenuItem<KaratList>(
                                                value: karat,
                                                child: Row(
                                                  children: [
                                                    Icon(karat.icon),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    RetainTextScaleWrapper(
                                                      child: Text(
                                                        karat.label,
                                                        style: TextStyle(
                                                          color: isDarkMode
                                                              ? const Color
                                                                  .fromARGB(215,
                                                                  255, 255, 255)
                                                              : Colors.black87,
                                                          fontSize: isExtraSmallScreen
                                                              ? 12
                                                              : isSmallScreen
                                                                  ? 14
                                                                  : isMediumScreen
                                                                      ? 14
                                                                      : isLargeScreen
                                                                          ? 14
                                                                          : isExtraLargeScreen
                                                                              ? 14
                                                                              : 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          letterSpacing: 0.75,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ));
                                          },
                                        ).toList(),
                                        onChanged: (KaratList? selectedKarat) {
                                          setState(() {
                                            _selectedKarat = selectedKarat;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                if (_selectedCategory == CategoryList.jewelry)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RetainTextScaleWrapper(
                                        child: Text('Weight',
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                          key: const ValueKey('weight'),
                                          controller: _productWeightController,
                                          textInputAction: TextInputAction.next,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Required';
                                            }

                                            // if (value.length < 6 && value != 'ad') {
                                            //   return 'Password must be at least 6 characters';
                                            // }
                                            return null;
                                          },
                                          style: TextStyle(
                                            color: isDarkMode
                                                ? const Color.fromARGB(
                                                    215, 255, 255, 255)
                                                : Colors.black87,
                                            fontSize: isExtraSmallScreen
                                                ? 12
                                                : isSmallScreen
                                                    ? 14
                                                    : isMediumScreen
                                                        ? 14
                                                        : isLargeScreen
                                                            ? 14
                                                            : isExtraLargeScreen
                                                                ? 14
                                                                : 16,
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 0.75,
                                          ),
                                          decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'ex: 5g./1kg.',
                                              hintStyle: TextStyle(
                                                color: isDarkMode
                                                    ? Colors.white
                                                        .withAlpha(240)
                                                    : Colors.black54,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              suffixIcon: IconButton(
                                                icon: const Icon(Icons.close),
                                                onPressed: () {
                                                  _productWeightController
                                                      .clear();
                                                },
                                              ))),
                                    ],
                                  ),
                              ],
                            ),
                            // if (_selectedCategory != CategoryList.jewelry)
                            const SizedBox(height: 20),
                            // if (_selectedCategory != CategoryList.jewelry)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Wrap(
                                spacing: 8.0,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  RetainTextScaleWrapper(
                                    child: Text('Product Specifications',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  Tooltip(
                                    message:
                                        'Auto formatted specs: Label -> Value',
                                    child: IconButton(
                                      icon: Icon(CupertinoIcons
                                          .info_circle_fill), // Or use a custom icon from a library
                                      onPressed: () {
                                        // Handle the onPressed action
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Center(
                                child: Form(
                                  key: _formKey,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16.0),
                                        child: SizedBox(
                                          // width: splitWidth,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              if (_formKey.currentState
                                                      ?.validate() ??
                                                  false) {
                                                _concatSpecsData =
                                                    '${_labelSpecsController.text.trimLeft().trimRight().replaceAll(RegExp(r'^-+|-+$'), '')}-${_valueSpecsController.text.trimLeft().trimRight().replaceAll(RegExp(r'^-+|-+$'), '')}'; // the RegExp here is to remove the preceding and trailing hyphen(s)(-)
                                                // developer.log(concatSpecsData);
                                                setState(() {
                                                  sharedPrefs.saveSpecsPair(
                                                      _concatSpecsData!);
                                                });
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                            child: RetainTextScaleWrapper(
                                              child: Text(
                                                'Add Specs.',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: LayoutBuilder(
                                            builder: (context, constraint) {
                                          // double nestedSplitWidth =
                                          //     constraint.maxWidth / 2;
                                          return Wrap(
                                            spacing: 16.0,
                                            runSpacing: 16.0,
                                            children: [
                                              // SizedBox(
                                              //   // width: nestedSplitWidth * 0.95,
                                              //   child: TextFormField(
                                              //       key: const ValueKey(
                                              //           'specs_lbl'),
                                              //       controller:
                                              //           _labelSpecsController,
                                              //       textInputAction:
                                              //           TextInputAction.next,
                                              //       validator: (value) {
                                              //         if (value == null ||
                                              //             value.isEmpty) {
                                              //           return 'Required';
                                              //         }

                                              //         // if (value.length < 6 && value != 'ad') {
                                              //         //   return 'Password must be at least 6 characters';
                                              //         // }
                                              //         return null;
                                              //       },
                                              //       style: TextStyle(
                                              //         color: isDarkMode
                                              //             ? const Color
                                              //                 .fromARGB(215,
                                              //                 255, 255, 255)
                                              //             : Colors.black87,
                                              //         fontSize: isExtraSmallScreen
                                              //             ? 12
                                              //             : isSmallScreen
                                              //                 ? 14
                                              //                 : isMediumScreen
                                              //                     ? 14
                                              //                     : isLargeScreen
                                              //                         ? 14
                                              //                         : isExtraLargeScreen
                                              //                             ? 14
                                              //                             : 16,
                                              //         fontWeight:
                                              //             FontWeight.normal,
                                              //         letterSpacing: 0.75,
                                              //       ),
                                              //       decoration: InputDecoration(
                                              //           border:
                                              //               const OutlineInputBorder(),
                                              //           hintText:
                                              //               'Label Specifications',
                                              //           hintStyle: TextStyle(
                                              //             color: isDarkMode
                                              //                 ? Colors.white
                                              //                     .withAlpha(
                                              //                         240)
                                              //                 : Colors.black54,
                                              //             fontSize: isExtraSmallScreen
                                              //                 ? 12
                                              //                 : isSmallScreen
                                              //                     ? 14
                                              //                     : isMediumScreen
                                              //                         ? 14
                                              //                         : isLargeScreen
                                              //                             ? 14
                                              //                             : isExtraLargeScreen
                                              //                                 ? 14
                                              //                                 : 16,
                                              //             fontWeight:
                                              //                 FontWeight.normal,
                                              //             letterSpacing: 0.75,
                                              //           ),
                                              //           suffixIcon: IconButton(
                                              //             icon: const Icon(
                                              //                 Icons.close),
                                              //             onPressed: () {
                                              //               _labelSpecsController
                                              //                   .clear();
                                              //             },
                                              //           ))),
                                              // ),
                                              switch (prodAdminKNData) {
                                                AsyncData(:final value) =>
                                                  RetainTextScaleWrapper(
                                                    child: CustomDropdown<
                                                        String>.search(
                                                      decoration:
                                                          CustomDropDownStyle
                                                              .customDropdownSearchDecorationClass(
                                                                  context,
                                                                  isDarkMode),
                                                      items: value
                                                          .productKeyName
                                                          ?.map((e) =>
                                                              e.prodKeyName)
                                                          .where(
                                                              (e) => e != null)
                                                          .cast<String>()
                                                          .toList(),
                                                      onChanged: (value) {
                                                        developer.log(
                                                            'Selected value: $value');
                                                      },
                                                    ),
                                                  ),
                                                AsyncError() => Center(
                                                    child:
                                                        RetainTextScaleWrapper(
                                                      child: const Text(
                                                          'Oops, something unexpected happened.'),
                                                    ),
                                                  ),
                                                _ => Center(
                                                    child:
                                                        LoadingAnimationWidget
                                                            .stretchedDots(
                                                      color: Colors.white,
                                                      size: 50,
                                                    ),
                                                  ),
                                              },
                                              SizedBox(
                                                // width: nestedSplitWidth * 0.95,
                                                child: TextFormField(
                                                  key: const ValueKey(
                                                      'specs_val'),
                                                  controller:
                                                      _valueSpecsController,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Required';
                                                    }

                                                    // if (value.length < 6 && value != 'ad') {
                                                    //   return 'Password must be at least 6 characters';
                                                    // }
                                                    return null;
                                                  },
                                                  style: TextStyle(
                                                    color: isDarkMode
                                                        ? const Color.fromARGB(
                                                            215, 255, 255, 255)
                                                        : Colors.black87,
                                                    fontSize: isExtraSmallScreen
                                                        ? 12
                                                        : isSmallScreen
                                                            ? 14
                                                            : isMediumScreen
                                                                ? 14
                                                                : isLargeScreen
                                                                    ? 14
                                                                    : isExtraLargeScreen
                                                                        ? 14
                                                                        : 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    letterSpacing: 0.75,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border:
                                                        const OutlineInputBorder(),
                                                    hintText:
                                                        'Value Specifications',
                                                    hintStyle: TextStyle(
                                                      color: isDarkMode
                                                          ? Colors.white
                                                              .withAlpha(240)
                                                          : Colors.black54,
                                                      fontSize: isExtraSmallScreen
                                                          ? 12
                                                          : isSmallScreen
                                                              ? 14
                                                              : isMediumScreen
                                                                  ? 14
                                                                  : isLargeScreen
                                                                      ? 14
                                                                      : isExtraLargeScreen
                                                                          ? 14
                                                                          : 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      letterSpacing: 0.75,
                                                    ),
                                                    suffixIcon: IconButton(
                                                      icon: const Icon(
                                                          Icons.close),
                                                      onPressed: () {
                                                        _valueSpecsController
                                                            .clear();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            _populateSpecsPairs(),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: RetainTextScaleWrapper(
                                child: Text('Product Images',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold)),
                              ),
                            ),
                            // Stack(
                            //   children: [
                            //     Row(
                            //       children:
                            //           // [
                            //           //   Image.asset(
                            //           //       width: 100,
                            //           //       height: 100,
                            //           //       'assets/images/Jewelry_demo_image_330x330_1.png'),
                            //           //   const SizedBox(
                            //           //     width: 20,
                            //           //   ),
                            //           //   Image.asset(
                            //           //       width: 100,
                            //           //       height: 100,
                            //           //       'assets/images/Gadget_demo_image_330x330_1.png'),
                            //           //   const SizedBox(
                            //           //     width: 20,
                            //           //   ),
                            //           //   Image.asset(
                            //           //       width: 100,
                            //           //       height: 100,
                            //           //       'assets/images/Luxury_bag_demo_image_330x330_1.png')
                            //           // ],
                            //           images
                            //               .map((image) => _buildImage(image))
                            //               .toList(),
                            //     )
                            //   ],
                            // ),
                            /*Wrap(
                              children: images
                                  .map((image) => _buildImage(image))
                                  .toList(),
                            ),
                            selectedImage != null
                                ? Image.memory(selectedImage!
                                    .bytes!) // Replace with your preferred image display
                                : Container(),
                            ElevatedButton(
                              onPressed: _pickImage,
                              child: const Text('Select Image'),
                            ),//use this for the upper commend source code */
                            Padding(
                              padding: _selectedImages.isNotEmpty
                                  ? const EdgeInsets.only(bottom: 12.0)
                                  : const EdgeInsets.all(0),
                              child: Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children:
                                    _selectedImages.map(_buildImage).toList(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ElevatedButton(
                                onPressed: _pickImage,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                child: RetainTextScaleWrapper(
                                  child: Text(
                                    'Select Images',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Wrap(
                                spacing: 8.0,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  RetainTextScaleWrapper(
                                    child: Text('Promotional Tags',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold)),
                                  ),
                                  Tooltip(
                                    message:
                                        'Sorting in ascending order is based on the first-to-last entry.',
                                    child: IconButton(
                                      icon: Icon(CupertinoIcons
                                          .info_circle_fill), // Or use a custom icon from a library
                                      onPressed: () {
                                        // Handle the onPressed action
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Form(
                              key: _formKey2,
                              child: Wrap(
                                direction: Axis.horizontal,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                alignment: WrapAlignment.start,
                                runSpacing: 16.0,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: SizedBox(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey2.currentState
                                                  ?.validate() ??
                                              false) {
                                            setState(() {
                                              sharedPrefs.savePromoTag(
                                                  _promoTagController.text);
                                            });
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        child: RetainTextScaleWrapper(
                                          child: Text(
                                            'Add Tags',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: TextFormField(
                                      key: const ValueKey('name'),
                                      controller: _promoTagController,
                                      textInputAction: TextInputAction.next,
                                      maxLength: 18,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Required';
                                        }

                                        // if (value.length < 6 && value != 'ad') {
                                        //   return 'Password must be at least 6 characters';
                                        // }
                                        return null;
                                      },
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? const Color.fromARGB(
                                                215, 255, 255, 255)
                                            : Colors.black87,
                                        fontSize: isExtraSmallScreen
                                            ? 12
                                            : isSmallScreen
                                                ? 14
                                                : isMediumScreen
                                                    ? 14
                                                    : isLargeScreen
                                                        ? 14
                                                        : isExtraLargeScreen
                                                            ? 14
                                                            : 16,
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0.75,
                                      ),
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        hintText: 'Tag Values',
                                        hintStyle: TextStyle(
                                          color: isDarkMode
                                              ? const Color.fromARGB(
                                                  215, 255, 255, 255)
                                              : Colors.black54,
                                          fontSize: isExtraSmallScreen
                                              ? 12
                                              : isSmallScreen
                                                  ? 14
                                                  : isMediumScreen
                                                      ? 14
                                                      : isLargeScreen
                                                          ? 14
                                                          : isExtraLargeScreen
                                                              ? 14
                                                              : 16,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 0.75,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            _promoTagController.clear();
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _populatePromoTags(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: _containerPadding(
                          isExtraSmallScreen,
                          isSmallScreen,
                          isMediumScreen,
                          isLargeScreen,
                          isExtraLargeScreen),
                      child: Container(
                        decoration: BoxDecoration(
                          color: customTheme?.containerBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          border: Border.all(
                              color: Colors.transparent), // Border color
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RetainTextScaleWrapper(
                              child: Text('Price & Stock',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            LayoutBuilder(
                              builder: (context, constraint) {
                                double parentWidth =
                                    (isSmallScreen || isMediumScreen)
                                        ? constraint.maxWidth
                                        : isLargeScreen
                                            ? constraint.maxWidth / 3
                                            : constraint.maxWidth / 4;
                                return Wrap(
                                  spacing:
                                      20.0, // Horizontal space between children
                                  runSpacing:
                                      20.0, // Vertical space between lines
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Original Price',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: parentWidth,
                                          child: TextFormField(
                                              key: const ValueKey('price'),
                                              maxLength: 13,
                                              controller:
                                                  _originalPriceController,
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              // inputFormatters: [
                                              //   NumberInputFormatter()
                                              // ],
                                              // inputFormatters: <TextInputFormatter>[
                                              //   FilteringTextInputFormatter.deny(
                                              //       ',',
                                              //       replacementString: '.'),
                                              //   FilteringTextInputFormatter.allow(
                                              //       RegExp(r'(^\d*\.?\d{0,2})')),
                                              // ],
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Required';
                                                }

                                                // if (value.length < 6 && value != 'ad') {
                                                //   return 'Password must be at least 6 characters';
                                                // }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: isDarkMode
                                                    ? const Color.fromARGB(
                                                        215, 255, 255, 255)
                                                    : Colors.black87,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              decoration: InputDecoration(
                                                  prefixIcon: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: FaIcon(
                                                        FontAwesomeIcons
                                                            .pesoSign),
                                                  ),
                                                  border:
                                                      const OutlineInputBorder(),
                                                  hintText: 'ex: 12,000',
                                                  hintStyle: TextStyle(
                                                    color: isDarkMode
                                                        ? const Color.fromARGB(
                                                            215, 255, 255, 255)
                                                        : Colors.black54,
                                                    fontSize: isExtraSmallScreen
                                                        ? 12
                                                        : isSmallScreen
                                                            ? 14
                                                            : isMediumScreen
                                                                ? 14
                                                                : isLargeScreen
                                                                    ? 14
                                                                    : isExtraLargeScreen
                                                                        ? 14
                                                                        : 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    letterSpacing: 0.75,
                                                  ),
                                                  suffixIcon: IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    onPressed: () {
                                                      _originalPriceController
                                                          .clear();
                                                    },
                                                  ))),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Wrap(
                                          spacing: 8.0,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          children: [
                                            RetainTextScaleWrapper(
                                              child: Text('Discounted Price',
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                            ),
                                            Tooltip(
                                              message:
                                                  'Total amount of original amount minus discount (e.g., 5000 - 1000 = 4000 [Discounted price])',
                                              child: IconButton(
                                                icon: Icon(CupertinoIcons
                                                    .info_circle_fill), // Or use a custom icon from a library
                                                onPressed: () {
                                                  // Handle the onPressed action
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: parentWidth,
                                          child: TextFormField(
                                              key: const ValueKey('dis_price'),
                                              maxLength: 11,
                                              controller:
                                                  _discountedPriceController,
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              textInputAction:
                                                  TextInputAction.next,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Required';
                                                }

                                                // if (value.length < 6 && value != 'ad') {
                                                //   return 'Password must be at least 6 characters';
                                                // }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: isDarkMode
                                                    ? const Color.fromARGB(
                                                        215, 255, 255, 255)
                                                    : Colors.black87,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              decoration: InputDecoration(
                                                  prefixIcon: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: FaIcon(
                                                        FontAwesomeIcons
                                                            .pesoSign),
                                                  ),
                                                  border:
                                                      const OutlineInputBorder(),
                                                  hintText: 'ex: 10,599',
                                                  hintStyle: TextStyle(
                                                    color: isDarkMode
                                                        ? const Color.fromARGB(
                                                            215, 255, 255, 255)
                                                        : Colors.black54,
                                                    fontSize: isExtraSmallScreen
                                                        ? 12
                                                        : isSmallScreen
                                                            ? 14
                                                            : isMediumScreen
                                                                ? 14
                                                                : isLargeScreen
                                                                    ? 14
                                                                    : isExtraLargeScreen
                                                                        ? 14
                                                                        : 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    letterSpacing: 0.75,
                                                  ),
                                                  suffixIcon: IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    onPressed: () {
                                                      _discountedPriceController
                                                          .clear();
                                                    },
                                                  ))),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Difference Price',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: parentWidth,
                                          child: TextFormField(
                                              key: const ValueKey('diff_price'),
                                              readOnly: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller:
                                                  _differencePriceController,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Required';
                                                }

                                                // if (value.length < 6 && value != 'ad') {
                                                //   return 'Password must be at least 6 characters';
                                                // }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: isDarkMode
                                                    ? const Color.fromARGB(
                                                        215, 255, 255, 255)
                                                    : Colors.black87,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              decoration: const InputDecoration(
                                                prefixIcon: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: FaIcon(FontAwesomeIcons
                                                      .pesoSign),
                                                ),
                                                border: OutlineInputBorder(),
                                                // hintText: 'ex: 1,401'
                                              )),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Actual % Discount',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: parentWidth,
                                          child: TextFormField(
                                              key: const ValueKey('act_dis'),
                                              readOnly: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller:
                                                  _actualPercentController,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Required';
                                                }

                                                // if (value.length < 6 && value != 'ad') {
                                                //   return 'Password must be at least 6 characters';
                                                // }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: isDarkMode
                                                    ? const Color.fromARGB(
                                                        215, 255, 255, 255)
                                                    : Colors.black87,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              decoration: const InputDecoration(
                                                  prefixIcon:
                                                      Icon(Icons.percent),
                                                  // Padding(
                                                  //   padding: EdgeInsets.all(8.0),
                                                  //   child: FaIcon(FontAwesomeIcons
                                                  //       .pesoSign),
                                                  // ),
                                                  border:
                                                      OutlineInputBorder())),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Rounded % Discount',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: parentWidth,
                                          child: TextFormField(
                                              key: const ValueKey('round_per'),
                                              readOnly: true,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller:
                                                  _roundedPercentController,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Required';
                                                }

                                                // if (value.length < 6 && value != 'ad') {
                                                //   return 'Password must be at least 6 characters';
                                                // }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: isDarkMode
                                                    ? const Color.fromARGB(
                                                        215, 255, 255, 255)
                                                    : Colors.black87,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              decoration: const InputDecoration(
                                                  prefixIcon:
                                                      Icon(Icons.percent),
                                                  // Padding(
                                                  //   padding: EdgeInsets.all(8.0),
                                                  //   child: FaIcon(FontAwesomeIcons
                                                  //       .pesoSign),
                                                  // ),
                                                  border:
                                                      OutlineInputBorder())),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Stock',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        SizedBox(
                                          width: parentWidth,
                                          child: TextFormField(
                                              key: const ValueKey('stock'),
                                              maxLength: 5,
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: _stockController,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Required';
                                                }

                                                // if (value.length < 6 && value != 'ad') {
                                                //   return 'Password must be at least 6 characters';
                                                // }
                                                return null;
                                              },
                                              style: TextStyle(
                                                color: isDarkMode
                                                    ? const Color.fromARGB(
                                                        215, 255, 255, 255)
                                                    : Colors.black87,
                                                fontSize: isExtraSmallScreen
                                                    ? 12
                                                    : isSmallScreen
                                                        ? 14
                                                        : isMediumScreen
                                                            ? 14
                                                            : isLargeScreen
                                                                ? 14
                                                                : isExtraLargeScreen
                                                                    ? 14
                                                                    : 16,
                                                fontWeight: FontWeight.normal,
                                                letterSpacing: 0.75,
                                              ),
                                              decoration: InputDecoration(
                                                  prefixIcon: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: FaIcon(
                                                        FontAwesomeIcons
                                                            .pesoSign),
                                                  ),
                                                  border:
                                                      const OutlineInputBorder(),
                                                  hintText: 'ex: 1',
                                                  hintStyle: TextStyle(
                                                    color: isDarkMode
                                                        ? const Color.fromARGB(
                                                            215, 255, 255, 255)
                                                        : Colors.black54,
                                                    fontSize: isExtraSmallScreen
                                                        ? 12
                                                        : isSmallScreen
                                                            ? 14
                                                            : isMediumScreen
                                                                ? 14
                                                                : isLargeScreen
                                                                    ? 14
                                                                    : isExtraLargeScreen
                                                                        ? 14
                                                                        : 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    letterSpacing: 0.75,
                                                  ),
                                                  suffixIcon: IconButton(
                                                    icon:
                                                        const Icon(Icons.close),
                                                    onPressed: () {
                                                      _stockController.clear();
                                                    },
                                                  ))),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Availability',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        Switch(
                                          value: _isAvailable,
                                          onChanged: (value) {
                                            setState(() {
                                              _isAvailable = value;
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RetainTextScaleWrapper(
                                          child: Text('Variants',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                        ),
                                        const SizedBox(height: 8),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 16.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              final screenHeight =
                                                  MediaQuery.of(context)
                                                      .size
                                                      .height;
                                              final screenWidth =
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width;

                                              _dialogCommon
                                                  .showDialogMessageExpanded(
                                                context,
                                                theme,
                                                isExtraSmallScreen,
                                                isSmallScreen,
                                                isMediumScreen,
                                                isLargeScreen,
                                                isExtraLargeScreen,
                                                screenWidth,
                                                screenHeight,
                                                'Add Product Variant',
                                                ProductVariant(),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 8.0),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child:
                                                            RetainTextScaleWrapper(
                                                          child: Text(
                                                            'Back',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                            child: RetainTextScaleWrapper(
                                              child: Text(
                                                'Add Variant',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: _containerPaddingBottom(
                          isExtraSmallScreen,
                          isSmallScreen,
                          isMediumScreen,
                          isLargeScreen,
                          isExtraLargeScreen),
                      child: Container(
                        decoration: BoxDecoration(
                          color: customTheme?.containerBackgroundColor,
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                          border: Border.all(
                              color: Colors.transparent), // Border color
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RetainTextScaleWrapper(
                              child: Text('Product Description',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RetainTextScaleWrapper(
                              child: Text('Main Description',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.bold)),
                            ),
                            LayoutBuilder(
                              builder: (context, constraint) {
                                double parentWidth = constraint.maxWidth;

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 8.0, bottom: 4.0),
                                      padding: const EdgeInsets.all(8.0),
                                      width: parentWidth,
                                      decoration: BoxDecoration(
                                        color: customTheme
                                            ?.containerBackgroundColor,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Border radius
                                        border: Border.all(
                                            color: isDarkMode
                                                ? const Color.fromARGB(
                                                    170, 255, 193, 7)
                                                : Colors
                                                    .lightBlue), // Border color
                                      ),
                                      child: Theme(
                                        data: Theme.of(context).copyWith(
                                            primaryColor: Colors.black,
                                            colorScheme: isDarkMode
                                                ? ColorScheme.dark(
                                                    surface:
                                                        Colors.grey.shade900)
                                                : ColorScheme.light(
                                                    surface:
                                                        Colors.grey.shade300)),
                                        child: QuillSimpleToolbar(
                                          controller:
                                              _wYSIWYGTextEditorController,
                                          config: QuillSimpleToolbarConfig(
                                            customButtons: [
                                              QuillToolbarCustomButtonOptions(
                                                icon: null,
                                                tooltip: 'Change Font',
                                                onPressed: () {
                                                  _wYSIWYGTextEditorController
                                                      .formatSelection(Attribute
                                                          .fromKeyValue('font',
                                                              _fontFamilies));
                                                },
                                              ),
                                            ],
                                            dialogTheme: QuillDialogTheme(
                                              dialogBackgroundColor: isDarkMode
                                                  ? Colors.grey.shade900
                                                  : Colors.grey.shade100,
                                            ),
                                            embedButtons: FlutterQuillEmbeds
                                                .toolbarButtons(
                                              imageButtonOptions:
                                                  QuillToolbarImageButtonOptions(),
                                              cameraButtonOptions: null,
                                              videoButtonOptions: null,
                                            ),
                                            // fontFamilyValues: _fontFamilies,
                                            // showClipboardPaste: true,
                                            showFontFamily: false,
                                            showDividers: true,
                                            showAlignmentButtons: true,
                                            showInlineCode: false,
                                            showCodeBlock: false,
                                            showColorButton: false,
                                            showBackgroundColorButton: false,
                                            showSearchButton: false,
                                            showQuote: false,
                                            showSubscript: false,
                                            showStrikeThrough: false,
                                            sectionDividerColor:
                                                const Color.fromARGB(
                                                    170, 255, 193, 7),
                                            sectionDividerSpace: 5.0,
                                            toolbarSectionSpacing: 5.0,
                                          ),
                                        ),
                                      ),
                                    ), //for viewing of created flutter_quill text, don't show the QuillToolbar
                                    Container(
                                      width: parentWidth,
                                      height: 400,
                                      margin:
                                          const EdgeInsets.only(bottom: 8.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: customTheme
                                            ?.containerBackgroundColor,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Border radius
                                        border: Border.all(
                                            color: isDarkMode
                                                ? const Color.fromARGB(
                                                    170, 255, 193, 7)
                                                : Colors
                                                    .lightBlue), // Border color
                                      ),
                                      child: QuillEditor(
                                        focusNode: FocusNode(),
                                        scrollController: ScrollController(),
                                        controller:
                                            _wYSIWYGTextEditorController,
                                        config: QuillEditorConfig(
                                          // builder: (context, rawEditor) {
                                          //   return DropTarget(
                                          //     onDragDone: _onDragDone,
                                          //     child: rawEditor,
                                          //   );
                                          // },
                                          embedBuilders: kIsWeb
                                              ? FlutterQuillEmbeds
                                                  .editorWebBuilders(
                                                  imageEmbedConfig:
                                                      QuillEditorImageEmbedConfig(
                                                    imageErrorWidgetBuilder:
                                                        (context, error,
                                                            stackTrace) {
                                                      // Display an error icon in place of the image
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            duration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        3000),
                                                            content:
                                                                RetainTextScaleWrapper(
                                                              child: Text(
                                                                'Error loading image: ${error.toString()}',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodySmall
                                                                    ?.copyWith(
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                      return const Icon(
                                                        Icons.error,
                                                        color: Colors.red,
                                                        size: 50.0,
                                                      );
                                                    },
                                                  ),
                                                  videoEmbedConfig: null,
                                                )
                                              : FlutterQuillEmbeds
                                                  .editorBuilders(
                                                  videoEmbedConfig: null,
                                                ),
                                          padding: const EdgeInsets.all(8.0),
                                          disableClipboard: false,
                                          maxContentWidth: parentWidth,
                                          minHeight: 200,
                                          maxHeight: 400,
                                        ),
                                      ),
                                    ),
                                    Wrap(
                                      spacing:
                                          20.0, // Horizontal space between children
                                      runSpacing:
                                          20.0, // Vertical space between lines
                                      runAlignment: WrapAlignment.start,
                                      direction: Axis.horizontal,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                side: BorderSide(
                                                    width: 2,
                                                    color: isDarkMode
                                                        ? const Color.fromARGB(
                                                            170, 255, 193, 7)
                                                        : Colors.lightBlue),
                                                backgroundColor: isDarkMode
                                                    ? Colors.transparent
                                                    : Colors.grey.shade100,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4))),
                                            child: RetainTextScaleWrapper(
                                              child: Text(
                                                'Clear Draft',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: isDarkMode
                                                            ? const Color
                                                                .fromARGB(170,
                                                                255, 193, 7)
                                                            : Colors.lightBlue),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: ElevatedButton(
                                            onPressed: _pickImage,
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                            child: RetainTextScaleWrapper(
                                              child: Text(
                                                'Submit',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class NumberInputFormatter extends TextInputFormatter {
//   final NumberFormat _numberFormat = NumberFormat('#,###.##', 'en_US');

//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     if (newValue.text.isEmpty) {
//       return newValue;
//     }

//     //Allow only digits and a single decimal point
//     final RegExp regExp = RegExp(r'(^\d*\.?\d{0,2})');
//     if (!regExp.hasMatch(newValue.text)) {
//       return oldValue;
//     }

//     // Remove existing commas to parse the number correctly
//     final String newText = newValue.text.replaceAll(",", "");
//     double value;
//     try {
//       value = double.parse(newText);
//     } catch (e) {
//       return oldValue;
//     }

//     // Format the value with commas
//     final String formattedValue = _numberFormat.format(value);
//     return TextEditingValue(
//       text: formattedValue,
//       selection: TextSelection.collapsed(offset: formattedValue.length),
//     );
//   }
// }//if necessary

enum CategoryList {
  jewelry({'Jewelry': 'jewelry'}, Icons.diamond_sharp),
  luxuryBag(
    {'Luxury Bag': 'luxury_bag'},
    Icons.shopping_bag,
  ),
  gadget({'Gadget': 'gadget'}, Icons.phone_android);

  const CategoryList(this.label, this.icon);
  final Map<String, String> label;
  final IconData icon;
}

enum JewTypeList {
  gold('Gold'),
  whiteGold('White Gold');

  const JewTypeList(this.label);
  final String label;
}

enum KaratList {
  twentyFour('24', Icons.diamond_sharp),
  twentyThree(
    '23',
    Icons.diamond_sharp,
  ),
  twentyTwo('22', Icons.diamond_sharp),
  twentyOne('21', Icons.diamond_sharp),
  eighteen('18', Icons.diamond_sharp),
  sixteen('16', Icons.diamond_sharp),
  fourteen('14', Icons.diamond_sharp),
  twelve('12', Icons.diamond_sharp),
  ten('10', Icons.diamond_sharp),
  eight('8', Icons.diamond_sharp);

  const KaratList(this.label, this.icon);
  final String label;
  final IconData icon;
}
