import 'package:client/app/widgets/image_viewer/custom_viewer_image.dart';
import 'package:client/core/extensions/common_extension.dart';
import 'package:flutter/material.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: context.lowValue,
        crossAxisSpacing: context.lowValue,
      ),
      itemBuilder: (context, index) {
        return Center(
          child: Wrap(
            direction: Axis.vertical,
            spacing: 2,
            children: const [
              CustomImageViewer(
                assetPath: 'assets/images/beauty_service_temp.png',
              ),
              Text("Haircut for men",
                  style: TextStyle(fontWeight: FontWeight.w500))
            ],
          ),
        );
      },
    );
  }
}