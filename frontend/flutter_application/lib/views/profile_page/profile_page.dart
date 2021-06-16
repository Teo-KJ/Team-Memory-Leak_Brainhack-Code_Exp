import 'package:flutter/material.dart';
import 'package:flutter_application/views/profile_page/components/top_bar.dart';
import 'components/history_section.dart';
import 'components/voucher_section.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  /// sanitize or query document here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ProfilePageTopBar(), VoucherSection(), Spacer(), VoucherHistory()],
      ),
    );
  }
}
