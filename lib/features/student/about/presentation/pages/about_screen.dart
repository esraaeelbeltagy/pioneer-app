import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/features/student/about/presentation/widgets/about_widget.dart';
import 'package:pioneer_app/features/student/about/presentation/widgets/free_consulting_widger.dart';
import 'package:pioneer_app/features/student/about/presentation/widgets/icon_text_widgte.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/visuals/logo_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        backgroundColor: AppColors.white,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        title: LogoWidget(
          width: 64.w,
          height: 64.h,
        ),
        shadowColor: Colors.grey.withOpacity(0.8),
        // Add shadow color

        actions: [
          const EndDrawerButtonIcon(),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Pioneer | Study in\n Malaysia",
                    style: theme.bodyLarge,
                  ),
                  const FreeConsultationBadge()
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                height: 320.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    AboutWidget(
                        imageAsset: "assets/images/about/about1.jpg",
                        title: "About pioneer",
                        description:
                            "Study in Malaysia  in the best public, private and international universities in Malaysia"),
                    AboutWidget(
                        imageAsset: "assets/images/about/about2.jpg",
                        title: "Pioneer service",
                        description:
                            "Seal of the Ministry of Higher Education Seal of the Ministry of Foreign Affairs Stamp of your country's embassy"),
                    AboutWidget(
                        imageAsset: "assets/images/about/about1.jpg",
                        title: "About pioneer",
                        description:
                            "Study in Malaysia  in the best public, private and international universities in Malaysia"),
                    AboutWidget(
                        imageAsset: "assets/images/about/about2.jpg",
                        title: "Pioneer service",
                        description:
                            "Seal of the Ministry of Higher Education Seal of the Ministry of Foreign Affairs Stamp of your country's embassy"),
                  ],
                ),
              ),
              const IconTextWidget(
                imageAsset: "assets/images/about/about5.png",
                title: "Who are we?",
                description:
                    "We are a certified and accredited educational company, a better agent agent for Malaysian Universities, We got the best experience in the field of student services and recruitments, educational consultations for Malaysian Universities by the help of Arabic and Malaysian experts too.",
              ),
              const IconTextWidget(
                imageAsset: "assets/images/about/about6.png",
                title: "Our Objectives",
                description:
                    "Providing the best services in the training and educational fields to save time, efforts of our customers benefiting from our services:\n• Distinguished Services\n• Honesty in treatment\n• Effective Communication\n• Strengthening strategic partnerships with the local community",
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
