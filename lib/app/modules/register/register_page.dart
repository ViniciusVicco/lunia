import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/app/comom_widgets/background_widgets/custom_clipper_backgrounded.dart';
import 'package:lunia/app/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/app/comom_widgets/custom_texts.dart';
import 'package:lunia/app/comom_widgets/rounded_container.dart';
import 'package:lunia/app/modules/register/register_module.dart';
import 'package:lunia/app/modules/register/register_page_second.dart';

class RegisterPage extends StatefulWidget {
  static const String routeName = "/RegisterPage";
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final Color selectedColor = Theme.of(context).colorScheme.primary;

    _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(1880),
        lastDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.year,
        cancelText: 'Cancelar',
        confirmText: 'Confirmar',
        helpText: 'Selecione a data de nascimento',
      );
      if (picked != null && picked != _dateTime)
        setState(() {
          _dateTime = picked;
        });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: CustomClipperBackgrounded(
            child: Center(
              child: ClipPath(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      width: width * 0.8,
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomTextTittle(
                                  text: 'Cadastre-se',
                                ),
                                Container(
                                  child: SvgPicture.asset(
                                      'assets/login_register/estrelas.svg'),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            CustomTextHint(
                              text: "Como você quer ser chamade?",
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            CustomroundedContainer(
                              height: height * 0.07,
                              child: TextFormField(
                                style: TextStyle(color: selectedColor),
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  hintText: "Insira um nome ou apelido...",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            CustomTextHint(
                              text: "Seu Pronome",
                            ),
                            SizedBox(
                              height: height * 0.012,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      print("Ela escolhido");
                                    },
                                    child: RoundedContainer(
                                      text: "Ela/a",
                                      radius: 20,
                                      isBorded: true,
                                      isLeft: true,
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      print("Ele escolhido");
                                    },
                                    child: RoundedContainer(
                                      text: "Ele/o",
                                      radius: 20,
                                      isBorded: false,
                                      isLeft: false,
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      print("Elu escolhido");
                                    },
                                    child: RoundedContainer(
                                      text: "Elu/ê",
                                      radius: 20,
                                      isBorded: true,
                                      isLeft: false,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            CustomTextHint(text: "Data do seu nascimento"),
                            SizedBox(
                              height: height * 0.012,
                            ),
                            GestureDetector(
                              onTap: () async {
                                _selectDate(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: width * 0.34,
                                height: height * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: selectedColor.withOpacity(0.4)),
                                  color: selectedColor.withOpacity(0.4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                                      style: TextStyle(color: selectedColor),
                                    ),
                                    IconButton(
                                        icon: Icon(
                                          Icons.date_range,
                                          color: selectedColor,
                                        ),
                                        onPressed: null)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                CustomTextHint(text: "Já tem uma conta ? "),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "Logue Aqui",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: selectedColor,
                                      ),
                                    )),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        RegisterModule.routeName +
                                            RegisterPageSecond.routeName);
                                  },
                                  child: Container(
                                    child: SvgPicture.asset(
                                        'assets/comom/btnProsseguir.svg'),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
