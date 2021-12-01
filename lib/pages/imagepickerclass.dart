
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({Key? key}) : super(key: key);

  @override
  _ImagePickerClassState createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  File? _image;
  Future CameraImage() async{
    final pickimg=ImagePicker();
    final pickFile= await pickimg.getImage(source: ImageSource.camera,
      maxHeight: 300,maxWidth: 300,
    );
    setState(() {
      _image=File(pickFile!.path);
    });

  }
  Future GalleryImage() async{
    final pickimg=ImagePicker();
    final pickFile= await pickimg.getImage(source: ImageSource.gallery,
      maxHeight: 300,maxWidth: 300,
    );
    setState(() {
      _image=File(pickFile!.path);
    });

  }
  // Future CameraImage() async{
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.getImage(source: ImageSource.camera,
  //       maxWidth: 300,maxHeight: 300);
  //   setState(() {
  //     _image = File(pickedFile!.path);
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker'),centerTitle: true,),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              child: _image==null?Text('Pick Your Picture'):Image.file(_image!),
            ),
            RaisedButton(
                onPressed: CameraImage,
            child: Icon(Icons.camera),
            ),
            RaisedButton(
              onPressed: GalleryImage,
              child: Icon(Icons.image),
            ),
          ],
        ),
      ),
    );
  }
}
