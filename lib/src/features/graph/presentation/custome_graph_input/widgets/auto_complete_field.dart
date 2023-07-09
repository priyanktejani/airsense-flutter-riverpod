import 'package:airsense/src/features/graph/domain/model/site.dart';
import 'package:airsense/src/features/graph/presentation/custome_graph_input/widgets/text_icon_field.dart';
import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_sizes.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:flutter/material.dart';

class AutoCompleteField extends StatelessWidget {
  final List<Site> sites;
  final bool enabled;
  final Function(Site)? onOptionSelected; 

  const AutoCompleteField({
    Key? key,
    required this.sites,
    this.enabled = true,
    this.onOptionSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Autocomplete<Site>(
          displayStringForOption: (Site option) => option.siteName,
          optionsBuilder: buildOptions,
          fieldViewBuilder: buildFieldView,
          optionsViewBuilder: (context, onSelected, options) =>
              buildOptionsView(context, constraints, onSelected, options,),
          onSelected: onOptionSelected,
        );
      },
    );
  }

  Iterable<Site> buildOptions(TextEditingValue textEditingValue) {
    if (textEditingValue.text.isEmpty) {
      return const Iterable<Site>.empty();
    }
    final String lowerCaseText = textEditingValue.text.toLowerCase();
    return sites.where((Site site) {
      final siteLowerCase = site.toString().toLowerCase();
      return siteLowerCase.contains(lowerCaseText);
    });
  }

  Widget buildFieldView(
    BuildContext context,
    TextEditingController textEditingController,
    FocusNode focusNode,
    Function() onFieldSubmitted,
  ) {
    return TextIconField(
      controller: textEditingController,
      focusNode: focusNode,
      hintText: AppTexts.sitecodeOrName,
      prefixIcon: Icons.location_searching_outlined,
      enabled: enabled,
      onSubmitted: (value) {
        onFieldSubmitted();
      },
    );
  }

  Widget buildOptionsView(
    BuildContext context,
    BoxConstraints constraints,
    Function(Site) onSelected,
    Iterable<Site> options,
  ) {
    double height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: AppSizes.s8),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.s12),
          ),
          elevation: AppSizes.s6,
          color: AppColors.primary,
          child: SizedBox(
            height: height * AppSizes.rs48,
            width: constraints.biggest.width,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.s16,
                vertical: AppSizes.s12,
              ),
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                final Site site = options.elementAt(index);
                return buildOptionRow(context, onSelected, site);
              },
              separatorBuilder: (context, index) => const Divider(
                height: AppSizes.s20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOptionRow(BuildContext context, Function(Site) onSelected, Site site) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => onSelected(site),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: AppSizes.s6),
            child: Icon(
              Icons.location_searching_outlined,
              color: AppColors.lightGrey,
              size: AppSizes.s28,
            ),
          ),
          gapW12,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * AppSizes.rs64,
                child: Text(
                  site.siteName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textStyleAutoCompleteTitle
                ),
              ),
             gapH4,
              Text(
                '#${site.siteCode}',
                style: textStyleAutoCompleteSubTitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
