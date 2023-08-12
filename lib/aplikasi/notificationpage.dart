import 'package:flutter/material.dart';

class Note {
  final String title;
  final String content;

  Note({
    required this.title,
    required this.content,
  });
}

class NotificationPage extends StatelessWidget{
  NotificationPage({Key? key}) : super(key: key);
  final List<Note> _noteList = [
    Note(
      title: 'Andrea',
      content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    Note(
      title: 'Andrew',
      content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    ),
    Note(
      title: 'Happy',
      content: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.',
    ),
    Note(
      title: 'Tom',
      content: 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text.',
    ),
    Note(
      title: 'Ben',
      content: 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text.',
    ),
    Note(
      title: 'Maya',
      content: 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for will uncover many web sites still in their infancy.',
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
          itemCount: _noteList.length,
          itemBuilder: (context, index) {
            final note = _noteList[index];
            return ListTile(
              leading: Hero(
                tag: note,
                child: CircleAvatar(
                  backgroundImage: Image.asset('assets/images/andrea.jpg').image,
                ),
              ),
              title: Text(
                _noteList[index].title,
              ),
              subtitle: Text(
                _noteList[index].content,
              ),
              
            );
          }),
    );
  }
}