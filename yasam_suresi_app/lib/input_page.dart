import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_suresi_app/constants.dart';
import 'package:yasam_suresi_app/my_container.dart';

import 'icon_text_widget.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet = "";
  double icilenSigara = 0.0;
  double sporGidilenGun = 0.0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(child: rowOutlinedButton("BOY")),
              ),
              Expanded(
                child: MyContainer(
                  child: rowOutlinedButton("KİLO"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Haftada kaç gün spora gidiyorsunuz?",
                  style: kmetinStili,
                ),
                Text(
                  "${sporGidilenGun.round()}",
                  style: kIconStili,
                ),
                Slider(
                  min: 0,
                  max: 7,
                  value: sporGidilenGun,
                  onChanged: (double newValue) {
                    setState(() {
                      sporGidilenGun = newValue;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: MyContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Günde kaç sigara içiyorsunuz?",
                  style: kmetinStili,
                ),
                Text(
                  "${icilenSigara.round()}",
                  style: kIconStili,
                ),
                Slider(
                  min: 0,
                  max: 30,
                  value: icilenSigara,
                  onChanged: (double newValue) {
                    setState(() {
                      icilenSigara = newValue;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPress: () {
                    setState(
                      () {
                        seciliCinsiyet = "KADIN";
                      },
                    );
                  },
                  renk: seciliCinsiyet == "KADIN"
                      ? Colors.lightBlue
                      : Colors.white,
                  child: IconTextWidget(
                    icon: FontAwesomeIcons.venus,
                    cinsiyet: "KADIN",
                  ),
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPress: () {
                    setState(
                      () {
                        seciliCinsiyet = "ERKEK";
                      },
                    );
                  },
                  renk: seciliCinsiyet == "ERKEK"
                      ? Colors.lightBlue
                      : Colors.white,
                  child: IconTextWidget(
                      icon: FontAwesomeIcons.mars, cinsiyet: "ERKEK"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row rowOutlinedButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: kmetinStili,
          ),
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == "BOY" ? boy.toString() : kilo.toString(),
            style: kIconStili,
          ),
        ),
        SizedBox(width: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == "BOY" ? boy++ : kilo++;
                });
              },
              child: Icon(FontAwesomeIcons.plus),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == "BOY" ? boy-- : kilo--;
                });
              },
              child: Icon(FontAwesomeIcons.minus),
            ),
          ],
        ),
      ],
    );
  }
}
