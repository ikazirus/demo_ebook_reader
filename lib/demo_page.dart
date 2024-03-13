import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class DemoPages extends StatefulWidget {
  @override
  _DemoPagesState createState() => _DemoPagesState();
}

class _DemoPagesState extends State<DemoPages> {
  int currentPage = 0;
  int pageCount = 11;
  PageController controller = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (id) {
                setState(() {
                  currentPage = id;
                });
              },
              controller: controller,
              itemCount: pageCount.toInt(),
              itemBuilder: (context, int id) {
                return PageBody(
                  title: "Chapter No.${id + 1}",
                  number: id,
                  body:
                      '''Lorem ipsum dolor sit amet, <red>consectetur adipiscing elit</red>. Sed sed laoreet dui. Cras ut erat quis mi efficitur dapibus vel et erat. Aliquam sed augue enim. Suspendisse ac libero lobortis tortor dignissim laoreet vitae id augue. Etiam ac erat sem. Nulla ut velit volutpat, accumsan elit eu, molestie tortor. Sed scelerisque est lectus, vehicula vestibulum nunc faucibus id. Suspendisse quis faucibus felis, nec placerat elit.
          
          Integer erat enim, mattis non consequat a, <bold>aliquet vitae tortor</bold>. Aliquam erat volutpat. Aliquam tristique massa blandit ligula mattis facilisis. Maecenas posuere tempor neque id interdum. Aliquam erat volutpat. Phasellus at leo in mauris porta fringilla. Proin mollis tortor quis lectus tempor, ut elementum neque tempor. Cras lacus mi, tincidunt a arcu ac, euismod viverra orci.
          
          Donec non ipsum eget leo posuere molestie non quis ipsum. Integer eu nunc non mauris ultrices tempus. Vivamus porttitor id eros non luctus. Nunc sit amet ligula ultricies, vestibulum dui vel, posuere ligula. Mauris congue purus in tortor feugiat, ac pulvinar sem ullamcorper. In hac habitasse platea dictumst. Sed et enim at lectus eleifend suscipit. Praesent sodales aliquam urna, vitae finibus risus placerat eu. Integer scelerisque nisi odio, id molestie odio faucibus nec. Praesent laoreet hendrerit sollicitudin.
          
          Pellentesque a tempor ligula, sit amet consequat diam. Praesent faucibus tortor euismod rhoncus vestibulum. Aenean molestie condimentum blandit. Aliquam erat volutpat. Etiam lobortis interdum sem, in finibus quam placerat accumsan. Nam ut turpis eget lacus accumsan ullamcorper sit amet sit amet magna. Fusce auctor rutrum elit, ac cursus neque pulvinar eu.
          
          Ut et elit dui. Vivamus nec dolor nec elit blandit tempus. Nullam finibus ultricies sodales. Aenean placerat semper dolor at aliquet. Aliquam sed auctor metus, sed iaculis nibh. Praesent mollis mi at tristique mattis. Sed ut ante felis. Duis eleifend massa non libero malesuada vulputate. Proin ac nibh sit amet libero ullamcorper accumsan.
          
          Lorem ipsum dolor sit amet, <red>consectetur adipiscing elit</red>. Sed sed laoreet dui. Cras ut erat quis mi efficitur dapibus vel et erat. Aliquam sed augue enim. Suspendisse ac libero lobortis tortor dignissim laoreet vitae id augue. Etiam ac erat sem. Nulla ut velit volutpat, accumsan elit eu, molestie tortor. Sed scelerisque est lectus, vehicula vestibulum nunc faucibus id. Suspendisse quis faucibus felis, nec placerat elit.
          
          Integer erat enim, mattis non consequat a, <bold>aliquet vitae tortor</bold>. Aliquam erat volutpat. Aliquam tristique massa blandit ligula mattis facilisis. Maecenas posuere tempor neque id interdum. Aliquam erat volutpat. Phasellus at leo in mauris porta fringilla. Proin mollis tortor quis lectus tempor, ut elementum neque tempor. Cras lacus mi, tincidunt a arcu ac, euismod viverra orci.
          
          Donec non ipsum eget leo posuere molestie non quis ipsum. Integer eu nunc non mauris ultrices tempus. Vivamus porttitor id eros non luctus. Nunc sit amet ligula ultricies, vestibulum dui vel, posuere ligula. Mauris congue purus in tortor feugiat, ac pulvinar sem ullamcorper. In hac habitasse platea dictumst. Sed et enim at lectus eleifend suscipit. Praesent sodales aliquam urna, vitae finibus risus placerat eu. Integer scelerisque nisi odio, id molestie odio faucibus nec. Praesent laoreet hendrerit sollicitudin.
          
          Pellentesque a tempor ligula, sit amet consequat diam. Praesent faucibus tortor euismod rhoncus vestibulum. Aenean molestie condimentum blandit. Aliquam erat volutpat. Etiam lobortis interdum sem, in finibus quam placerat accumsan. Nam ut turpis eget lacus accumsan ullamcorper sit amet sit amet magna. Fusce auctor rutrum elit, ac cursus neque pulvinar eu.
          
          Ut et elit dui. Vivamus nec dolor nec elit blandit tempus. Nullam finibus ultricies sodales. Aenean placerat semper dolor at aliquet. Aliquam sed auctor metus, sed iaculis nibh. Praesent mollis mi at tristique mattis. Sed ut ante felis. Duis eleifend massa non libero malesuada vulputate. Proin ac nibh sit amet libero ullamcorper accumsan.
          
          Lorem ipsum dolor sit amet, <red>consectetur adipiscing elit</red>. Sed sed laoreet dui. Cras ut erat quis mi efficitur dapibus vel et erat. Aliquam sed augue enim. Suspendisse ac libero lobortis tortor dignissim laoreet vitae id augue. Etiam ac erat sem. Nulla ut velit volutpat, accumsan elit eu, molestie tortor. Sed scelerisque est lectus, vehicula vestibulum nunc faucibus id. Suspendisse quis faucibus felis, nec placerat elit.
          
          Integer erat enim, mattis non consequat a, <bold>aliquet vitae tortor</bold>. Aliquam erat volutpat. Aliquam tristique massa blandit ligula mattis facilisis. Maecenas posuere tempor neque id interdum. Aliquam erat volutpat. Phasellus at leo in mauris porta fringilla. Proin mollis tortor quis lectus tempor, ut elementum neque tempor. Cras lacus mi, tincidunt a arcu ac, euismod viverra orci.
          
          Donec non ipsum eget leo posuere molestie non quis ipsum. Integer eu nunc non mauris ultrices tempus. Vivamus porttitor id eros non luctus. Nunc sit amet ligula ultricies, vestibulum dui vel, posuere ligula. Mauris congue purus in tortor feugiat, ac pulvinar sem ullamcorper. In hac habitasse platea dictumst. Sed et enim at lectus eleifend suscipit. Praesent sodales aliquam urna, vitae finibus risus placerat eu. Integer scelerisque nisi odio, id molestie odio faucibus nec. Praesent laoreet hendrerit sollicitudin.
          
          Pellentesque a tempor ligula, sit amet consequat diam. Praesent faucibus tortor euismod rhoncus vestibulum. Aenean molestie condimentum blandit. Aliquam erat volutpat. Etiam lobortis interdum sem, in finibus quam placerat accumsan. Nam ut turpis eget lacus accumsan ullamcorper sit amet sit amet magna. Fusce auctor rutrum elit, ac cursus neque pulvinar eu.
          
          Ut et elit dui. Vivamus nec dolor nec elit blandit tempus. Nullam finibus ultricies sodales. Aenean placerat semper dolor at aliquet. Aliquam sed auctor metus, sed iaculis nibh. Praesent mollis mi at tristique mattis. Sed ut ante felis. Duis eleifend massa non libero malesuada vulputate. Proin ac nibh sit amet libero ullamcorper accumsan.
          
          Lorem ipsum dolor sit amet, <red>consectetur adipiscing elit</red>. Sed sed laoreet dui. Cras ut erat quis mi efficitur dapibus vel et erat. Aliquam sed augue enim. Suspendisse ac libero lobortis tortor dignissim laoreet vitae id augue. Etiam ac erat sem. Nulla ut velit volutpat, accumsan elit eu, molestie tortor. Sed scelerisque est lectus, vehicula vestibulum nunc faucibus id. Suspendisse quis faucibus felis, nec placerat elit.
          
          Integer erat enim, mattis non consequat a, <bold>aliquet vitae tortor</bold>. Aliquam erat volutpat. Aliquam tristique massa blandit ligula mattis facilisis. Maecenas posuere tempor neque id interdum. Aliquam erat volutpat. Phasellus at leo in mauris porta fringilla. Proin mollis tortor quis lectus tempor, ut elementum neque tempor. Cras lacus mi, tincidunt a arcu ac, euismod viverra orci.
          
          Donec non ipsum eget leo posuere molestie non quis ipsum. Integer eu nunc non mauris ultrices tempus. Vivamus porttitor id eros non luctus. Nunc sit amet ligula ultricies, vestibulum dui vel, posuere ligula. Mauris congue purus in tortor feugiat, ac pulvinar sem ullamcorper. In hac habitasse platea dictumst. Sed et enim at lectus eleifend suscipit. Praesent sodales aliquam urna, vitae finibus risus placerat eu. Integer scelerisque nisi odio, id molestie odio faucibus nec. Praesent laoreet hendrerit sollicitudin.
          
          Pellentesque a tempor ligula, sit amet consequat diam. Praesent faucibus tortor euismod rhoncus vestibulum. Aenean molestie condimentum blandit. Aliquam erat volutpat. Etiam lobortis interdum sem, in finibus quam placerat accumsan. Nam ut turpis eget lacus accumsan ullamcorper sit amet sit amet magna. Fusce auctor rutrum elit, ac cursus neque pulvinar eu.
          
          Ut et elit dui. Vivamus nec dolor nec elit blandit tempus. Nullam finibus ultricies sodales. Aenean placerat semper dolor at aliquet. Aliquam sed auctor metus, sed iaculis nibh. Praesent mollis mi at tristique mattis. Sed ut ante felis. Duis eleifend massa non libero malesuada vulputate. Proin ac nibh sit amet libero ullamcorper accumsan.''',
                );
              },
            ),
          ),
          Slider(
            activeColor: Colors.amber,
            value: (currentPage / (pageCount - 1)),
            onChanged: (id) {
              controller.animateToPage(
                (id * pageCount).toInt(),
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            },
          ),
        ],
      ),
    );
  }
}

class PageBody extends StatelessWidget {
  final String title;
  final int number;
  final String body;

  const PageBody({
    required this.title,
    required this.number,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber[300],
      ),
      backgroundColor: Colors.transparent,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: StyledText(
              text: body,
              tags: {
                'bold': StyledTextTag(
                    style: TextStyle(fontWeight: FontWeight.bold)),
                'red': StyledTextTag(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              },
            ),
          ),
        ),
      ),
    );
  }
}
