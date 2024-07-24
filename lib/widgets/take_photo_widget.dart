import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Visits/presentation/widgets/photo_gallery_widget.dart';

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
      Shared.images_list.add(_selectImage!);
   });
   
}

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        color: Color.fromARGB(255, 228, 224, 224),
        dashPattern: const [12, 14],
        strokeWidth: 2,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Shared.images_list.length > 0
                  ? PhotoGalleryWidget()
                  : Container(),
        InkWell(
          onTap: _takePicture,
          child:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
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
              )),
            ],
          )


        ),
      );
  }
}

