import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/features/setting/presentation/model_view/switch_theme_bloc/switch_theme_bloc.dart';
import 'package:flutter_challenge/generated/l10n.dart';

class SettingThemeItem extends StatelessWidget {
  const SettingThemeItem({
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
            child: Text(cont.DarkMode),
          ),
          BlocBuilder<SwitchThemeBloc, SwitchThemeState>(
            builder: (context, state) {
              return Switch(
                  activeColor: Colors.deepPurpleAccent,
                  value: state.switchThemeValue,
                  onChanged: (newValue) {
                    newValue
                        ? context
                            .read<SwitchThemeBloc>()
                            .add(SwitchDarkThemeEvent())
                        : context
                            .read<SwitchThemeBloc>()
                            .add(SwitchLightThemeEvent());
                  });
            },
          )
        ],
      ),
    );
  }
}
