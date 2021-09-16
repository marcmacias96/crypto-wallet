import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../aplication/contact/contact_form_bloc/contact_form_bloc.dart';
import '../../../../core/utils.dart';
import 'contact_edit_form.dart';
import 'contact_view.dart';
import 'top_contact_view.dart';

class BodyContactView extends StatelessWidget {
  const BodyContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactFormBloc, ContactFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((failure) {
            Utils.showSnackBar(
                failure.maybeMap(
                  userNameAlreadyExits: (_) => "Nombre de usuario ya en uso",
                  doesNotExist: (_) => "No existe dirección",
                  insufficientPermissions: (_) => "Permisos insuficientes",
                  unableToUpdate: (_) => "No se puede actualizar",
                  noInternet: (_) => "No tiene conexión",
                  orElse: () => "Error inesperado",
                ),
                context,
                color: Colors.red);
          }, (_) {
            if (state.isDeleting) {
              context.router.pop();
              Utils.showSnackBar("Contacto eliminado con exito", context,
                  color: Colors.green);
            } else {
              context.read<ContactFormBloc>().add(ContactFormEvent.isEditing());
              Utils.showSnackBar("Contacto modificado con exito", context,
                  color: Colors.green);
            }
          });
        });
      },
      builder: (context, state) {
        return Stack(
          children: [
            TopContactView(
              isEditing: state.isEditing,
              contact: state.contact,
            ),
            Container(
              height: 0.67.sh,
              margin: EdgeInsets.only(top: 0.32.sh),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.isEditing
                        ? ContactEditForm(
                            contact: state.contact,
                            showErrorMessages: state.showErrorMessages,
                          )
                        : ContactView(
                            address: state.contact.address.isValid()
                                ? state.contact.address.getOrCrash()
                                : "",
                            name: state.contact.name.isValid()
                                ? state.contact.name.getOrCrash()
                                : "",
                          ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
