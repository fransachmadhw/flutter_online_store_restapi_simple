import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    double spacing = 8.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Account",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 22)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(spacing * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8 * 10),
                        image: DecorationImage(
                            image: AssetImage('assets/img6.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Gap(spacing),
              Column(
                children: [
                  Text("Sayonara",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 20)),
                  Gap(spacing / 2),
                  Text("sayonara@gmail.com",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 15)),
                  Gap(spacing / 2),
                  Text("https://github.com/fransachmadhw",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 15))
                ],
              ),
              Gap(spacing * 3),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/edit.svg',
                            color: Colors.green,
                            width: spacing * 3,
                          ),
                          Gap(spacing * 2),
                          Text("Edit Account",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18))
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: Colors.black,
                        width: spacing * 3,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/info_square.svg',
                            color: Colors.green,
                            width: spacing * 3,
                          ),
                          Gap(spacing * 2),
                          Text("FAQ and Help",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18))
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: Colors.black,
                        width: spacing * 3,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/message.svg',
                            color: Colors.green,
                            width: spacing * 3,
                          ),
                          Gap(spacing * 2),
                          Text("Contact Admin",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18))
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: Colors.black,
                        width: spacing * 3,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/logout.svg',
                            color: Colors.green,
                            width: spacing * 3,
                          ),
                          Gap(spacing * 2),
                          Text("Sign Out",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18))
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: Colors.black,
                        width: spacing * 3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
