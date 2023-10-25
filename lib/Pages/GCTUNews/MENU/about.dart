import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey_app/components/aboutimgcomp.dart';
import 'package:studyssey_app/components/textcomp.dart';
import 'package:studyssey_app/utils/styles.dart';

import '../NewsGCTU.dart';

void main() {
  runApp(const aboutStudyssey());
}

class aboutStudyssey extends StatelessWidget {
  const aboutStudyssey ({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Set text directionality here
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, right: medium, left: medium),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NewsGCTU()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/svg/back.svg',
                              width: 15,
                              height: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 110),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('About', style: heading400reg),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: small),
                const Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      children: [
                        abtimg(),

                        textcomp(text: 'Welcome to Studyssey, a mobile application provided by Ghana Communication Technology University ("GCTU"). This Privacy Policy explains how we collect, use, disclose, and protect your personal information when you use the Studyssey app.',
                            heading: '1. Introduction'),
                        textcomp(text: '''We may collect the following types of information:
                          Personal Information: When you create an account or use certain features of the app, we may collect personal information such as your name, email address, and contact information.
                          Usage Data: We may collect information about how you use the app, including your interactions with the app's features and content.
                          Device Information: We may collect information about the device you use to access the app, including device type, operating system, and unique device identifiers.
                          Location Information: With your consent, we may collect your precise location information to provide location-based services.
                          User Content: Any content you submit to the app, including messages, posts, or files, may be collected and stored.''',
                            heading: '2. Information We Collect'),
                        textcomp(text: '''We may use your information for the following purposes:
                          To provide, maintain, and improve the app's functionality and user experience.
                          To personalize your experience and provide content and features that are relevant to you.
                          To communicate with you, including sending notifications and updates.
                          To analyze and monitor app usage and trends.
                          To protect the security and integrity of the app.''',
                            heading: '3. How We Use Your Information'),
                        textcomp(text: '''We may share your information with third parties in the following circumstances:
                          With your consent.
                          To comply with legal obligations.
                          To protect the rights, privacy, safety, or property of Studyssey, its users, or the public.
                          In connection with a merger, sale, or transfer of assets.''',
                            heading: '4. Sharing Your Information'),
                        textcomp(text: '''You have the following choices regarding your personal information:
                          You can access and update your account information through the app.
                          You can opt out of receiving promotional emails or push notifications.
                          You can disable location services in your device settings.''',
                            heading: '5. Your Choices'),
                        textcomp(text: 'We take reasonable measures to protect your personal information but cannot guarantee its security. Please use the app responsibly and keep your account credentials confidential.',
                            heading: '6. Security'),
                        textcomp(text: 'Studyssey is not intended for children under the age of 13. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe that your child has provided us with personal information, please contact us.',
                            heading: '''7. Children's Privacy'''),
                        textcomp(text: 'We may update this Privacy Policy to reflect changes in our practices or for legal or regulatory reasons. Any changes will be posted on this page, and the "Effective Date" at the top of the policy will be updated.',
                            heading: '8. Changes to this Privacy Policy'),
                        textcomp(text: '''If you have questions or concerns about this Privacy Policy, please contact us at [contact@email.com].\n
                          Thank you for using Studyssey!''', heading: '9. Contact Us'),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
