import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:med_city/domain/data/repository/doctors_repository.dart';
import 'package:med_city/presentation/widgets/future_builder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _repo=ApiRepositoryImpl();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey,
      body: Center(
        child: FBuilder(repo: _repo),
      ),
    );
  }
}
