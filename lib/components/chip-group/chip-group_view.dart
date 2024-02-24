part of 'chip-group_component.dart';

Widget _chipGroupView(ChipGroupComponent component, BuildContext context) {
  return Column(
      children: [
        if (component.interests.isNotEmpty)
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.space_8),
                  child: TextComponent(
                    text: '${component.interests.length} selected.',
                    color: AppColors.stone_600,
                    size: AppSpacing.space_12,
                  ))),
        SizedBox(
          height: 175,
          width: AppSpacing.max,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                alignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.up,
                spacing: AppSpacing.space_4,
                runSpacing: AppSpacing.space_8,
                children: [...component.interests],
              ),
            ),
          ),
        ),
      ],
    );
}
