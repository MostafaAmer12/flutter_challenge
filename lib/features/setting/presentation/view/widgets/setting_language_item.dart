import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/features/setting/presentation/model_view/bloc/switch_language_bloc.dart';
import 'package:flutter_challenge/generated/l10n.dart';

class SettingLanguageItem extends StatelessWidget {
  const SettingLanguageItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final cont = S.of(context);
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(cont.ArabicLanguage),
          ),
          BlocBuilder<SwitchLanguageBloc, SwitchLanguageState>(
            builder: (context, state) {
              return Switch(
                  activeColor: Colors.deepPurpleAccent,
                  value: state.switchLanguageValue,
                  onChanged: (value) {
                    value
                        ? context
                            .read<SwitchLanguageBloc>()
                            .add(ArabicLanguageEvent())
                        : context
                            .read<SwitchLanguageBloc>()
                            .add(EnglishLanguageEvent());
                  });
            },
          )
        ],
      ),
    );
  }
}
