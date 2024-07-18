import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePhoto extends StatefulWidget {
  const TakePhoto({super.key});

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {

File? _selectImage;

_takePicture() async{
  final imagePicker = ImagePicker();
  final XFile? pickedImage = await imagePicker.pickImage(
    source: ImageSource.gallery,
    maxWidth: 600,
    );
    if(pickedImage == null){
      return;
    }
   setState(() {
      _selectImage = File(pickedImage.path);
   });
   
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _takePicture,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        color: Color.fromARGB(255, 228, 224, 224),
        dashPattern: const [12, 14],
        strokeWidth: 2,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.044
             : MediaQuery.of(context).size.height * 0.066,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'اضف صورة',
                style: TextStyle(
                  color: Color(0xff1D7AFC),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.005,
              ),
              Image.asset(
                'assets/images/AddCCCircle.png',
                height: MediaQuery.of(context).size.height * 0.017,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

