import 'package:flutter/material.dart';
import '../../../helpers/const/colors.dart';
import '../../../helpers/const/strings.dart';
import '../../widgets/custom_search_bar.dart';


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
      appBar: AppBar(
          backgroundColor: kWhite,
          title: Text(Strings.appTittle),
          leading: CircleAvatar(
            radius: 36,
            backgroundColor: Colors.grey.shade100,
            child: Icon(Icons.arrow_back),
          )),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.search), Text(Strings.search)],
              ),
            ),
            // CustomSearchBar(controller:_controller)

          ],
        ),
      )),
    );
  }
}
