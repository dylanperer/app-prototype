part of 'text-area_component.dart';

Widget _textAreaView(TextAreaComponent component, BuildContext context) {
  return const Stack(
      children: [
        TextField(
          maxLength: 500,
          maxLines: 5,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.space_18)),
                borderSide: BorderSide(
                    color: AppColors.main_500, width: 1.2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.space_18)),
                borderSide: BorderSide(
                    color: AppColors.stone_300, width: 1.2),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.space_18)),
                borderSide: BorderSide(
                    color: AppColors.stone_300, width: 1.2),
              ),
              hintText: "Write something about you here..."),
        ),
      ],
    );
}
