import 'package:flutter/material.dart';

import '../../../../../core/widgets/complete_data_box.dart';
import 'custom_skills_content.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDataBox(
      text: 'Skills',
      height: 94,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSkillsContent(),
        ],
      ),
    );
  }
}
