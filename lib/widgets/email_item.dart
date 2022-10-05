import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../global_data.dart';
class EmailItem extends StatefulWidget {
  final Email email ;
  const EmailItem({Key? key ,required this.email}) : super(key: key);

  @override
  State<EmailItem> createState() => _EmailItemState();
}

class _EmailItemState extends State<EmailItem> {
  bool isHovered = false ;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onHover: (value){
          setState(() {
            isHovered = value ;
          });
        },
        child: SizedBox(width: MediaQuery.of(context).size.width,child : (isHovered)?HoverTruePart(email: widget.email,) : HoverFalsePart(email: widget.email) ,)
    );
  }
}
class HoverFalsePart extends StatelessWidget {
  final Email email ;
  const HoverFalsePart({Key? key , required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: false, onChanged: (value){}, checkColor: Colors.grey,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.star_border, color: Colors.grey,size: 20,)),
          Text(email.source , style: const TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(width: 50,),
          Text("${email.title}-" , ),
          Expanded(child: Text("${email.body.replaceAll('\n', '').substring(0)}-",maxLines: 1,overflow: TextOverflow.ellipsis,))
        ],
      ),
    );
  }
}
class HoverTruePart extends StatelessWidget {
  final Email email ;
  const HoverTruePart({Key? key , required this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.drag_indicator,),
        Checkbox(value: false, onChanged: (value){}, checkColor: Colors.grey,),
        IconButton(onPressed: (){}, icon: const Icon(Icons.star_border, )),
        Text(email.source , style: const TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(width: 50,),
        Text("${email.title}-" , ),
        Expanded(child: Text("${email.body.replaceAll('\n', '').substring(0)}-",maxLines: 1,overflow: TextOverflow.ellipsis,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.archive , )),
        IconButton(onPressed: (){}, icon: const Icon(Icons.delete , )),
        IconButton(onPressed: (){}, icon: const Icon(Icons.mark_as_unread , )),
        IconButton(onPressed: (){}, icon: const Icon(Icons.snooze , )),
        const SizedBox(width: 50,)
      ],
    );
  }
}

