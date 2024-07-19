import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _obscureText = true;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumb = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pinCode = TextEditingController();
  final studentForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Details'),
      ),
      body: Form(
        key: studentForm,
        child: ListView(padding: const EdgeInsets.all(15.0), children: [
          //FirstName
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Colors.grey,
                label: Text("First Name"),
                labelStyle: TextStyle(color: Colors.grey),
                hintText: 'Enter your First Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: firstName,
            validator: (firstName) {
              if (firstName!.isEmpty) {
                return 'Please enter the First Name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //LastName
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                label: Text('Last Name'),
                hintText: 'Enter your Last Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: lastName,
            validator: (lastName) {
              if (lastName!.isEmpty) {
                return 'Please enter the Last Name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //Password
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                label: const Text('Password'),
                hintText: 'Enter your Password',
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: password,
            validator: (password) {
              RegExp regex = RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$');
              if (password!.isEmpty) {
                return 'Please enter password';
              } else {
                if (!regex.hasMatch(password)) {
                  return 'Enter valid password';
                } else {
                  return null;
                }
              }
            },
            obscureText: _obscureText,
          ),
          const SizedBox(
            height: 10,
          ),
          //Mobile Number
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                label: Text('Mobile number'),
                hintText: 'Enter your Mobile number',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: phoneNumb,
            maxLength: 10,
            validator: (phoneNumber) {
              if (phoneNumber!.length < 10) {
                return 'Enter Valid Mobile number';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //Area
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.area_chart),
                label: Text('Area'),
                hintText: 'Enter your Area Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: area,
            validator: (area) {
              if (area!.isEmpty) {
                return 'Please enter your Area';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //City Name
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.location_city),
                label: Text('City'),
                hintText: 'Enter your City Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: city,
            validator: (city) {
              if (city!.isEmpty) {
                return 'Please enter your City';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //State
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.real_estate_agent_rounded),
                label: Text('State'),
                hintText: 'Enter your State',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: state,
            validator: (state) {
              if (state!.isEmpty) {
                return 'Please enter your City';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //Country
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.real_estate_agent_rounded),
                label: Text('Country'),
                hintText: 'Enter your Country',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: country,
            validator: (country) {
              if (country!.isEmpty) {
                return 'Please enter your Country';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          //Email
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.real_estate_agent_rounded),
                  label: Text('email'),
                  hintText: 'Enter your email.com',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
              controller: email,
              validator: (email) {
                if (email!.isEmpty &&
                    !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(email)) {
                  return 'Please enter valid Email';
                }

                return null;
              }),
          const SizedBox(
            height: 10,
          ),
          //PinCode
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.real_estate_agent_rounded),
                label: Text('PinCode'),
                hintText: 'Enter your PinCode',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: pinCode,
            maxLength: 6,
            validator: (pinCode) {
              if (pinCode!.length < 6) {
                return ' Enter valid PinCode';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (studentForm.currentState!.validate()) {
                debugPrint(firstName.text);
                debugPrint(lastName.text);
                debugPrint(password.text);
                debugPrint(phoneNumb.text);
                debugPrint(area.text);
                debugPrint(city.text);
                debugPrint(state.text);
                debugPrint(country.text);
                debugPrint(email.text);
                //print('PinCode is: ${pinCode.text}');

                if (firstName.text == 'Admin' &&
                    password.text == 'Adminuser132@3') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login Successful')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Invalid Username and Password')),
                  );
                }
              }
            },
            child: const Text('Submit'),
          ),
        ]),
      ),
    );
  }
}
