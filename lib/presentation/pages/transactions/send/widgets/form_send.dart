import 'package:auto_route/auto_route.dart';
import 'package:crypto_wallet/presentation/core/text_edit_mask.dart';
import 'package:crypto_wallet/presentation/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../aplication/transaction_form_bloc/transaction_form_bloc.dart';
import '../../../../routes/router.gr.dart';
import '../../../auth/widgets/custom_button.dart';

class FormSend extends StatefulWidget {
  FormSend({Key? key}) : super(key: key);

  @override
  _FormSendState createState() => _FormSendState();
}

class _FormSendState extends State<FormSend> {
  final TextEditingController _valueMaskController =
      MaskedTextController(mask: '\$#######');
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionFormBloc, TransactionFormState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(() {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (_) {
            context.router.pop();
          });
        });
      },
      builder: (context, state) {
        return state.isLoading
            ? LoadingSend()
            : Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.w, vertical: 50.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 50.w, right: 50.w, top: 50.h),
                        alignment: Alignment.center,
                        child: Text(
                          'Enviar',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 70.sp),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        'Ingrese el monto',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.sp),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      TextFormField(
                        controller: _valueMaskController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9|.]')),
                        ],
                        decoration: InputDecoration(hintText: r'$' '0.00'),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 90.sp),
                        onChanged: (value) => context
                            .read<TransactionFormBloc>()
                            .add(
                              TransactionFormEvent.valueChanged(double.parse(
                                  value.isNotEmpty
                                      ? value.replaceAll(RegExp(r'[$]'), '0')
                                      : '0')),
                            ),
                        validator: (value) {
                          if (double.parse(value!.isNotEmpty
                                  ? value.replaceAll(RegExp(r'[$]'), '0')
                                  : '0') >
                              state.wallet.balance) {
                            return 'No tienes saldo suficiente';
                          }
                        },
                      ),
                      SizedBox(
                        height: 150.h,
                      ),
                      Visibility(
                        visible: state.contact == null,
                        child: InkWell(
                          onTap: () => context.router
                              .navigate(ContactSelectRoute(onSelect: (contact) {
                            context
                                .read<TransactionFormBloc>()
                                .add(TransactionFormEvent.setContact(contact));

                            context.router.pop();
                          })),
                          child: SizedBox(
                            height: 170.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Seleccione un contacto',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 30.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (state.contact != null)
                        InkWell(
                          onTap: () => context.router
                              .navigate(ContactSelectRoute(onSelect: (contact) {
                            context
                                .read<TransactionFormBloc>()
                                .add(TransactionFormEvent.setContact(contact));

                            context.router.pop();
                          })),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 15.h,
                              horizontal: 35.w,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[50],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Para',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      state.contact!.name.getOrCrash(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 40.sp,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  state.contact!.address.getOrCrash(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 220.h,
                      ),
                      CustomButton(
                        text: 'Enviar',
                        textcolor: Colors.white,
                        buttoncolor: state.contact != null && state.value != 0
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                        onTap: () => state.contact != null && state.value != 0
                            ? context
                                .read<TransactionFormBloc>()
                                .add(TransactionFormEvent.sendBitcoin())
                            : {},
                      ),
                      CustomButton(
                        text: 'Cancelar',
                        textcolor: Colors.black,
                        buttoncolor: Colors.white,
                        onTap: () => context.router.pop(),
                      )
                    ],
                  ),
                ),
              );
      },
    );
  }
}

class LoadingSend extends StatelessWidget {
  const LoadingSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.8.sh,
      child: Center(
        child: Lottie.asset(
          'assets/animations/send.json',
          height: 500.sp,
          width: 500.sp,
          repeat: true,
        ),
      ),
    );
  }
}
