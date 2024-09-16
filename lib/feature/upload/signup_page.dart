import 'package:bookia_app/core/widgets/custom_botton.dart';
import 'package:bookia_app/feature/auth/data/models/request/register_params.dart';
import 'package:bookia_app/feature/bloc/auth_bloc.dart';
import 'package:bookia_app/feature/bloc/auth_event.dart';
import 'package:bookia_app/feature/bloc/auth_state.dart';
import 'package:bookia_app/feature/home/Home_page.dart';
import 'package:bookia_app/feature/upload/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookia_app/core/widgets/text_form_field.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {

   final formKey = GlobalKey<FormState>();
   var UserNameController =TextEditingController();
   var emailController=TextEditingController();
   var passwordController=TextEditingController();
   var confirmPasswordController=TextEditingController();
   bool isOb = true;
   bool isOb1 =true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
       if(state is RegisterSuccesState){
         Navigator.pushReplacement(
              context,
               MaterialPageRoute(
                 builder: (context) => HomePage()),
                            );
       }else if(state is RegisterFailerState  ){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.error),)
          );
       }
       
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Material(
                        borderRadius: BorderRadius.circular(14),
                        color: Color.fromARGB(255, 243, 240, 234),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          icon: Icon(Icons.arrow_back_ios_outlined),
                        ),
                      ),
                    ),
                    Gap(40),
                    Text(
                      "Hello! Register to get \n started",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: UserNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: GoogleFonts.dmSerifDisplay(
                            color: Color(0xff6A707C)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Gap(20),
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: " Email",
                        hintStyle: GoogleFonts.dmSerifDisplay(
                            color: Color(0xff6A707C)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Gap(20),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your Password";
                        } else if (value.length < 8) {
                          return "The Password must be at least 8 characters";
                        }
                        return null;
                      },
                      obscureText: isOb,
                      decoration: InputDecoration(
                        hintText: " Password",
                        hintStyle: GoogleFonts.dmSerifDisplay(
                            color: Color(0xff6A707C)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isOb = !isOb;
                            });
                          },
                          icon: isOb
                              ? Icon(Icons.visibility_off_rounded)
                              : Icon(Icons.remove_red_eye_rounded),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Gap(20),
                    TextFormField(
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value!.isEmpty&&value.length < 8 && value!= passwordController.text) {
                          return "Please enter your Password & Password must be at least 8 characters/n password must be equal";
                        }
                        return null;
                      },
                      obscureText: isOb1,
                      decoration: InputDecoration(
                        hintText: " Confirm Password",
                        hintStyle: GoogleFonts.dmSerifDisplay(
                        color: Color(0xff6A707C)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                         suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isOb1 = !isOb1;
                            });
                          },
                          icon: isOb1
                              ? Icon(Icons.visibility_off_rounded)
                              : Icon(Icons.remove_red_eye_rounded),
                        ),    

                      ),
                    ),
                    Gap(10),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Gap(30),
                          state is RegisterLoadingState?
                          CircularProgressIndicator()
                          :CustomeButton(name: "Register",onPressed: (){
                          if(formKey.currentState!.validate()){
                            context.read<AuthBloc>().add(RegesterEvent(
                            RegisterParams(
                              name:UserNameController.text ,
                              email:emailController.text ,
                              password: passwordController.text,
                              passwordConfirmation: confirmPasswordController.text,
                              )
                          ));    
                          }      
                          },),

                          SizedBox(
                            height: 34,
                          ),
                          Row(
                            children: [
                              Expanded(child: Divider()),
                              Gap(20),
                              Text(
                                "Or Register With ",
                                style: GoogleFonts.dmSerifDisplay(
                                    color: Color(0xff6A707C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                              Gap(20),
                              Expanded(child: Divider())
                            ],
                          ),
                          Gap(30),
                         
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already Have an Account?"),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                child: Text(
                                  "Login Now",
                                  style: GoogleFonts.dmSerifDisplay(
                                      color: Color.fromARGB(255, 189, 156, 72),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

