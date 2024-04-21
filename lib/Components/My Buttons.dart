
import 'package:flutter/material.dart';
//import 'package:file_picker/file_picker.dart';


//My Buttons

class MyButton extends StatelessWidget {
  // const MyButton({super.key, required String title});
  final String title;
  // final Color color;
  final VoidCallback onpress;

   MyButton({
    super.key,
    required this.title,
    // this.color = const Color(0xff6763EE),
    required this.onpress,
}) {}


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff6763EE).withOpacity(0.7), // Red with 67% opacity
                Color(0xff6763EE).withOpacity(1), // Blue with 67% opacity
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

            borderRadius: BorderRadius.circular(20),
            // color: color,
          ),
          child: Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins SemiBold', fontSize: 16, color: Colors.white),)),
        ),
      ),
    );
  }
}






// Import file_picker package
//
// class FileUploadTextField extends StatefulWidget {
//   @override
//   _FileUploadTextFieldState createState() => _FileUploadTextFieldState();
// }
//
// class _FileUploadTextFieldState extends State<FileUploadTextField> {
//   String _fileName = ''; // Initialize _fileName to an empty string
//
//   Future<void> _pickFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();
//
//     if (result != null) {
//       setState(() {
//         _fileName = result.files.single.name!;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       child: TextField(
//         readOnly: true, // Make the TextField non-editable
//         onTap: _pickFile,
//         decoration: InputDecoration(
//          // filled: true,
//           fillColor: Color(0xffFAFAFA),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(14.0),
//             borderSide: BorderSide(color: Color(0xff000200).withOpacity(0.5), width: 1),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(14.0),
//             borderSide: BorderSide(color: Color(0xff999A99), width: 1.6),
//
//           ),
//
//
//           prefixIcon: Padding(
//             padding: const EdgeInsets.only(left: 18.0, right: 12),
//             child: Image.asset('assets/signup/Upload.png', width: 24, height: 24,),
//           ),
//
//           labelText: 'Click to Upload vehicle photos',
//           labelStyle: TextStyle(
//             fontFamily: 'Poppins Regular',
//             fontSize: 14,
//             color: Color(0xff000200).withOpacity(0.7),
//           ),
//         ),
//         controller: TextEditingController(text: _fileName),
//       ),
//     );
//   }
// }
