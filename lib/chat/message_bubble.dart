import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble(this.message,this.username, this.isMe, {this.key});

  final Key key;
  final String message;
  final String username;
  final bool isMe;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[600] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(!isMe ? 0 : 12),
              bottomRight: Radius.circular(isMe ? 0 : 12),
            ),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                username,
                style: TextStyle(
                  color: Theme.of(context).accentTextTheme.headline1.color,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
            message,
            style: TextStyle(
              color: Theme.of(context).accentTextTheme.headline1.color,
            ),
          ),
            ],
          )
        ),
      ],
    );
  }
}
