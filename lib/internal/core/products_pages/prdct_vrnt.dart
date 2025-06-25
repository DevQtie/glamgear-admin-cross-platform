import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glamgear/global_hlpr_n_wdgt/cstm_drpd_decor.dart';
import 'package:glamgear/internal/data_model/freezed/prdct_admin_data.dart';
import 'package:glamgear/riverpod/provider.dart';
import 'package:intl/intl.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';
import 'dart:developer' as developer;

import 'package:glamgear/internal/table_related_widget/pgnted_tbl_wid.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProductVariant extends ConsumerStatefulWidget {
  const ProductVariant({super.key});

  @override
  ConsumerState<ProductVariant> createState() => _ProductVariantState();
}

class _ProductVariantState extends ConsumerState<ProductVariant> {
  // LabelList? _selectedCategory;
  final TextEditingController _labelVarController = TextEditingController();
  final TextEditingController _valueVarController = TextEditingController();
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
  final NumberFormat _formatter = NumberFormat('#,###');
  bool _isAvailable = true;
  bool _isCalculating = false;
  List<PlatformFile> _selectedImages = [];
  PlatformFile? _selectedImage;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _concatVarPropData;

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
            Image.memory(image.bytes!,
                width: 100,
                height: 100), // Replace with your image display logic
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
          insetPadding: const EdgeInsets.symmetric(
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
                  icon: const Icon(CupertinoIcons.xmark),
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

  Future<void> _initProdKey() async {
    ref.read(retrieveProductVarKeyProvider.notifier).initProdKey();
  }

  @override
  void initState() {
    super.initState();
    _originalPriceController.addListener(_onOriginalPriceChanged);
    _discountedPriceController.addListener(_onDiscountedPriceChanged);
    _stockController.addListener(_formatStock);
    Future.microtask(() => _initProdKey());
  }

  @override
  void dispose() {
    _labelVarController.dispose();
    _valueVarController.dispose();
    _originalPriceController.dispose();
    _discountedPriceController.dispose();
    _differencePriceController.dispose();
    _actualPercentController.dispose();
    _roundedPercentController.dispose();
    _stockController.dispose();
    super.dispose();
  }

  Future<List<Map<String, dynamic>>> _getFormattedVariantProperties(
      BuildContext context) async {
    final prefs = await ref.read(sharedPrefFutureProvider.future);
    List<Map<String, String>> history = await prefs.getVarProperties(
        ascending: false); // I will override the default true

    // Convert the dateTime string back to a DateTime object for each entry
    return history.map((entry) {
      return {
        'varProp': entry['varProp'],
        'dateTime': DateTime.parse(entry['dateTime']!)
      };
    }).toList();
  }

  Widget _populateVarProperties() {
    final varProp = _getFormattedVariantProperties(context);
    final ThemeData theme = Theme.of(context);

    final sharedPrefs = ref.watch(sharedPrefProvider);
    return FutureBuilder(
      future: varProp,
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
                        final text = entry['varProp'];
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
                                    sharedPrefs.removeEachVarProp(text);
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

  @override
  Widget build(BuildContext context) {
    final bool isExtraSmallScreen = MediaQuery.of(context).size.width <= 320;
    final bool isSmallScreen = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width <= 600;
    final bool isMediumScreen = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 800;
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1048;
    final bool isExtraLargeScreen = MediaQuery.of(context).size.width > 1048 &&
        MediaQuery.of(context).size.width <= 1280;
    final ThemeData theme = Theme.of(context);
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    final sharedPrefs = ref.watch(sharedPrefProvider);
    final prodVarAdminData = ref.watch(retrieveProductVarKeyProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RetainTextScaleWrapper(
                        child: Text('Created product variance',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: PaginatedTableWidget(),
                    // DataTable(
                    //   sortColumnIndex: 0,
                    //   sortAscending: true,
                    //   columns: const <DataColumn>[
                    //     DataColumn(
                    //       label: Expanded(
                    //         child: Text(
                    //           'Name',
                    //           style: TextStyle(fontStyle: FontStyle.italic),
                    //         ),
                    //       ),
                    //     ),
                    //     DataColumn(
                    //       label: Expanded(
                    //         child: Text(
                    //           'Age',
                    //           style: TextStyle(fontStyle: FontStyle.italic),
                    //         ),
                    //       ),
                    //     ),
                    //     DataColumn(
                    //       label: Expanded(
                    //         child: Text(
                    //           'Role',
                    //           style: TextStyle(fontStyle: FontStyle.italic),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    //   rows: const <DataRow>[
                    //     DataRow(
                    //       selected: true,
                    //       cells: <DataCell>[
                    //         DataCell(Text('Sarah')),
                    //         DataCell(Text('19')),
                    //         DataCell(Text('Student')),
                    //       ],
                    //     ),
                    //     DataRow(
                    //       selected: true,
                    //       cells: <DataCell>[
                    //         DataCell(Text('Janine')),
                    //         DataCell(Text('43')),
                    //         DataCell(Text('Professor')),
                    //       ],
                    //     ),
                    //     DataRow(
                    //       selected: true,
                    //       cells: <DataCell>[
                    //         DataCell(Text('William')),
                    //         DataCell(Text('27')),
                    //         DataCell(Text('Associate Professor')),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Wrap(
                        spacing: 8.0,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          RetainTextScaleWrapper(
                            child: Text('Product Identification',
                                textAlign: TextAlign.start,
                                style: theme.textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ),
                          Tooltip(
                            message: 'Product label and value',
                            child: IconButton(
                              icon: const Icon(CupertinoIcons
                                  .info_circle_fill), // Or use a custom icon from a library
                              onPressed: () {
                                // Handle the onPressed action
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: LayoutBuilder(builder: (context, constraint) {
                        double nestedSplitWidth = constraint.maxWidth / 2;
                        return Form(
                          key: _formKey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(
                              //   width: nestedSplitWidth * 0.95,
                              //   child: DropdownButtonFormField<LabelList>(
                              //     elevation: 0,
                              //     style: TextStyle(
                              //       color: isDarkMode
                              //           ? Colors.white.withAlpha(240)
                              //           : Colors.black87,
                              //       fontSize: isExtraSmallScreen
                              //           ? 12
                              //           : isSmallScreen
                              //               ? 14
                              //               : isMediumScreen
                              //                   ? 14
                              //                   : isLargeScreen
                              //                       ? 14
                              //                       : isExtraLargeScreen
                              //                           ? 14
                              //                           : 16,
                              //       fontWeight: FontWeight.normal,
                              //       letterSpacing: 0.75,
                              //     ),
                              //     hint: Text(
                              //       'Variant Label',
                              //       style: TextStyle(
                              //         color: isDarkMode
                              //             ? Colors.white.withAlpha(240)
                              //             : Colors.black54,
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
                              //         fontWeight: FontWeight.normal,
                              //         letterSpacing: 0.75,
                              //       ),
                              //     ),
                              //     dropdownColor: isDarkMode
                              //         ? Colors.grey.shade900
                              //         : Colors.grey.shade300,
                              //     decoration: const InputDecoration(
                              //       fillColor: Colors.transparent,
                              //       border: OutlineInputBorder(),
                              //       filled: true,
                              //       contentPadding: EdgeInsets.symmetric(
                              //           vertical: 5.0, horizontal: 12.0),
                              //     ),
                              //     value: _selectedCategory,
                              //     items: LabelList.values
                              //         .map<DropdownMenuItem<LabelList>>(
                              //       (LabelList category) {
                              //         return DropdownMenuItem<LabelList>(
                              //             value: category,
                              //             child: Row(
                              //               children: [
                              //                 category.icon,
                              //                 const SizedBox(
                              //                   width: 10,
                              //                 ),
                              //                 Text(
                              //                   category.label,
                              //                   style: TextStyle(
                              //                     color: isDarkMode
                              //                         ? const Color.fromARGB(
                              //                             215, 255, 255, 255)
                              //                         : Colors.black87,
                              //                     fontSize: isExtraSmallScreen
                              //                         ? 12
                              //                         : isSmallScreen
                              //                             ? 14
                              //                             : isMediumScreen
                              //                                 ? 14
                              //                                 : isLargeScreen
                              //                                     ? 14
                              //                                     : isExtraLargeScreen
                              //                                         ? 14
                              //                                         : 16,
                              //                     fontWeight: FontWeight.normal,
                              //                     letterSpacing: 0.75,
                              //                   ),
                              //                 ),
                              //               ],
                              //             ));
                              //       },
                              //     ).toList(),
                              //     onChanged: (LabelList? selectedCategory) {
                              //       setState(() {
                              //         _selectedCategory = selectedCategory;
                              //       });
                              //     },
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: SizedBox(
                                  // width: splitWidth,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState?.validate() ??
                                          false) {
                                        _concatVarPropData =
                                            '${_labelVarController.text.trimLeft().trimRight().replaceAll(RegExp(r'^-+|-+$'), '')}-${_valueVarController.text.trimLeft().trimRight().replaceAll(RegExp(r'^-+|-+$'), '')}'; // the RegExp here is to remove the preceding and trailing hyphen(s)(-)
                                        // developer.log(concatSpecsData);
                                        setState(() {
                                          sharedPrefs.saveVariantProp(
                                              _concatVarPropData!);
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
                                        'Add Properties',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Wrap(
                                  spacing: 16.0,
                                  runSpacing: 16.0,
                                  children: [
                                    // SizedBox(
                                    //   width: nestedSplitWidth * 0.5,
                                    //   child: TextFormField(
                                    //       key: const ValueKey('specs_lbl'),
                                    //       controller: _labelVarController,
                                    //       textInputAction: TextInputAction.next,
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
                                    //             ? const Color.fromARGB(
                                    //                 215, 255, 255, 255)
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
                                    //         fontWeight: FontWeight.normal,
                                    //         letterSpacing: 0.75,
                                    //       ),
                                    //       decoration: InputDecoration(
                                    //           border:
                                    //               const OutlineInputBorder(),
                                    //           hintText: 'Label Properties',
                                    //           hintStyle: TextStyle(
                                    //             color: isDarkMode
                                    //                 ? Colors.white
                                    //                     .withAlpha(240)
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
                                    //             fontWeight: FontWeight.normal,
                                    //             letterSpacing: 0.75,
                                    //           ),
                                    //           suffixIcon: IconButton(
                                    //             icon: const Icon(Icons.close),
                                    //             onPressed: () {
                                    //               _labelVarController.clear();
                                    //             },
                                    //           ))),
                                    // ),
                                    switch (prodVarAdminData) {
                                      AsyncData(:final value) => SizedBox(
                                          width: nestedSplitWidth * 0.5,
                                          child: RetainTextScaleWrapper(
                                            child:
                                                CustomDropdown<String>.search(
                                              decoration: CustomDropDownStyle
                                                  .customDropdownSearchDecorationClass(
                                                      context, isDarkMode),
                                              items: value.productVarKeyName
                                                  ?.map((e) => e.prodVarKeyName)
                                                  .where((e) => e != null)
                                                  .cast<String>()
                                                  .toList(),
                                              onChanged: (value) {
                                                developer.log(
                                                    'Selected value: $value');
                                              },
                                            ),
                                          ),
                                        ),
                                      AsyncError() => Center(
                                          child: SizedBox(
                                            width: nestedSplitWidth * 0.5,
                                            child: RetainTextScaleWrapper(
                                              child: const Text(
                                                  'Oops, something unexpected happened.'),
                                            ),
                                          ),
                                        ),
                                      _ => Center(
                                          child: LoadingAnimationWidget
                                              .stretchedDots(
                                            color: Colors.white,
                                            size: 50,
                                          ),
                                        ),
                                    },
                                    SizedBox(
                                      width: nestedSplitWidth * 0.5,
                                      child: TextFormField(
                                          key: const ValueKey('specs_val'),
                                          controller: _valueVarController,
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
                                              hintText: 'Value Properties',
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
                                                  _valueVarController.clear();
                                                },
                                              ))),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  _populateVarProperties(),
                  const SizedBox(
                    height: 20,
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: const Divider(
                      thickness: 0.25,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RetainTextScaleWrapper(
                        child: Text('Price & Stock',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LayoutBuilder(
                    builder: (context, constraint) {
                      double parentWidth = (isSmallScreen || isMediumScreen)
                          ? constraint.maxWidth
                          : isLargeScreen
                              ? constraint.maxWidth / 3
                              : constraint.maxWidth / 4;
                      return Wrap(
                        spacing: 20.0, // Horizontal space between children
                        runSpacing: 20.0, // Vertical space between lines
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Original Price',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: parentWidth,
                                child: TextFormField(
                                    key: const ValueKey('price'),
                                    maxLength: 13,
                                    controller: _originalPriceController,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
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
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
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
                                          padding: EdgeInsets.all(8.0),
                                          child:
                                              FaIcon(FontAwesomeIcons.pesoSign),
                                        ),
                                        border: const OutlineInputBorder(),
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
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 0.75,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            _originalPriceController.clear();
                                          },
                                        ))),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Discounted Price',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: parentWidth,
                                child: TextFormField(
                                    key: const ValueKey('dis_price'),
                                    maxLength: 11,
                                    controller: _discountedPriceController,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
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
                                          padding: EdgeInsets.all(8.0),
                                          child:
                                              FaIcon(FontAwesomeIcons.pesoSign),
                                        ),
                                        border: const OutlineInputBorder(),
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
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 0.75,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            _discountedPriceController.clear();
                                          },
                                        ))),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Difference Price',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: parentWidth,
                                child: TextFormField(
                                    key: const ValueKey('diff_price'),
                                    readOnly: true,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textInputAction: TextInputAction.next,
                                    controller: _differencePriceController,
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
                                    decoration: const InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child:
                                            FaIcon(FontAwesomeIcons.pesoSign),
                                      ),
                                      border: OutlineInputBorder(),
                                      // hintText: 'ex: 1,401'
                                    )),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Actual % Discount',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: parentWidth,
                                child: TextFormField(
                                    key: const ValueKey('act_dis'),
                                    readOnly: true,
                                    textInputAction: TextInputAction.next,
                                    controller: _actualPercentController,
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
                                    decoration: const InputDecoration(
                                        prefixIcon: Icon(Icons.percent),
                                        // Padding(
                                        //   padding: EdgeInsets.all(8.0),
                                        //   child: FaIcon(FontAwesomeIcons
                                        //       .pesoSign),
                                        // ),
                                        border: OutlineInputBorder())),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Rounded % Discount',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: parentWidth,
                                child: TextFormField(
                                    key: const ValueKey('round_per'),
                                    readOnly: true,
                                    textInputAction: TextInputAction.next,
                                    controller: _roundedPercentController,
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
                                    decoration: const InputDecoration(
                                        prefixIcon: Icon(Icons.percent),
                                        // Padding(
                                        //   padding: EdgeInsets.all(8.0),
                                        //   child: FaIcon(FontAwesomeIcons
                                        //       .pesoSign),
                                        // ),
                                        border: OutlineInputBorder())),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Stock',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: parentWidth,
                                child: TextFormField(
                                    key: const ValueKey('stock'),
                                    maxLength: 5,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textInputAction: TextInputAction.next,
                                    controller: _stockController,
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
                                        prefixIcon: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child:
                                              FaIcon(FontAwesomeIcons.pesoSign),
                                        ),
                                        border: const OutlineInputBorder(),
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
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 0.75,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () {
                                            _stockController.clear();
                                          },
                                        ))),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RetainTextScaleWrapper(
                                child: Text('Availability',
                                    textAlign: TextAlign.start,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold)),
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
                        ],
                      );
                    },
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: const Divider(
                      thickness: 0.25,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RetainTextScaleWrapper(
                      child: Text('Product Images',
                          textAlign: TextAlign.start,
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: _selectedImages.isNotEmpty
                        ? const EdgeInsets.all(8.0)
                        : const EdgeInsets.all(0),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: _selectedImages.map(_buildImage).toList(),
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
                          style: theme.textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
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
                      'Save',
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum LabelList {
  weight('Weight', FaIcon(FontAwesomeIcons.weightScale)),
  size(
    'Size',
    FaIcon(FontAwesomeIcons.ruler),
  );

  const LabelList(this.label, this.icon);
  final String label;
  final Widget icon;
}
