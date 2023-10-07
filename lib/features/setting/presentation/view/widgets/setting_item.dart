import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/features/setting/presentation/model_view/bloc/switch_theme_bloc.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.settingName,
  });
  final String settingName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(settingName),
          ),
          BlocBuilder<SwitchThemeBloc, SwitchThemeState>(
            builder: (context, state) {
              return Switch(
                  activeColor: Colors.deepPurpleAccent,
                  value: settingName == 'Dark Mode' ? state.switchValue : false,
                  onChanged: settingName == 'Dark Mode'
                      ? (newValue) {
                          newValue
                              ? context
                                  .read<SwitchThemeBloc>()
                                  .add(SwitchDarkThemeEvent())
                              : context
                                  .read<SwitchThemeBloc>()
                                  .add(SwitchLightThemeEvent());
                        }
                      : (value) {});
            },
          )
          // IconButton(
          //   onPressed: widget.settingName == 'Dark Mode' ? () {} : () {},
          //   icon: widget.settingName == 'Dark Mode'
          //       ? isDark
          //           ? const Icon(
          //               Icons.toggle_on_outlined,
          //               color: Colors.deepPurpleAccent,
          //             )
          //           : const Icon(
          //               Icons.toggle_off_outlined,
          //             )
          //       : const Icon(Icons.toggle_off_outlined),
          // )
        ],
      ),
    );
  }
}
