import 'package:flutter/material.dart';
import 'package:perplexity_clone/themes/colors.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SideBar(),
        // side navbar
        Expanded(
          child: Column(
            children: [
              // search section
              Expanded(
                child: SearchSection(),
              ),
              Container(
                height: 40,
              ),
              // footer
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [ 
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'pro',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.footerGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Enterprize',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.footerGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'store',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.footerGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'blog',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.footerGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'careers',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.footerGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'English (English)',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.footerGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
