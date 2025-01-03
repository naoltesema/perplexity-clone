import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/themes/colors.dart';
import 'package:perplexity_clone/widgets/search_bar_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Where knowledge begin',
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 32),
        Container(
          width: 700,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1.5,
              color: AppColors.searchBarBorder,
            ),
            color: AppColors.searchBar,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search anything....',
                    hintStyle: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    SearchBarButton(
                      icon: Icons.auto_awesome_mosaic,
                      text: 'Focus',
                    ),
                    const SizedBox(width: 14),
                    SearchBarButton(
                      icon: Icons.add_circle_outline_outlined,
                      text: "Attach",
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.submitButton,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.background,
                        size: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
