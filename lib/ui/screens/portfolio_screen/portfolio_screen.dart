import 'package:flutter/material.dart';
import '../../../helpers/const/colors.dart';
import '../../../helpers/const/strings.dart';
import '../../../helpers/const/styles.dart';
import '../../widgets/custom_bar.dart';
import '../../widgets/custom_search_bar.dart';
import '../../widgets/custom_search_button.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
        child: Column(
          children: [
            const CustomBar(text: Strings.appTittle),
            const SizedBox(height: 16),
            const CustomSearchButton(text: Strings.search),
            // CustomSearchBar(controller:_controller)
          ],
        ),
      )),
    );
  }
}
