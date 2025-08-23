import 'package:flutter/material.dart';
import 'package:learn_flutter_67_1/model/person.dart';
import 'package:learn_flutter_67_1/main.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job _job = Job.engineer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Person"),
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Name Field
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Please enter name";
                    return null;
                  },
                  onSaved: (value) => _name = value!,
                ),
                // Age Field
                TextFormField(
                  decoration: InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Please enter age";
                    if (int.tryParse(value) == null)
                      return "Please enter a valid number";
                    return null;
                  },
                  onSaved: (value) => _age = int.parse(value!),
                ),
                // Job Dropdown
                DropdownButtonFormField<Job>(
                  value: _job,
                  decoration: InputDecoration(labelText: "Job"),
                  items: Job.values
                      .map(
                        (job) => DropdownMenuItem(
                          value: job,
                          child: Text(job.title),
                        ),
                      )
                      .toList(),
                  onChanged: (value) => setState(() => _job = value!),
                ),
                SizedBox(height: 20),
                // Submit Button
                FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print("Name: $_name, Age: $_age, Job: ${_job.title}");
                      setState(() {
                        personList.add(
                          Person(name: _name, age: _age, job: _job),
                        );
                      });
                      _formKey.currentState!.reset();

                      // Navigate back to Item screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyApp();
                          },
                        ),
                      );
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 207, 21, 21),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
