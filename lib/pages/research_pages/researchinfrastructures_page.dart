import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ResearchInfraPage extends StatelessWidget {
  const ResearchInfraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Research",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Research Infrastructures",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Physical Resources",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "IOE is one of the well-equipped institutes in the South Asia region. IOE has about 70 laboratories and workshops. As most of the laboratories are equipped with computer facilities, in addition to regular practical classes for students, they are adequate for the purpose of rendering research, consultancy and manufacturing oriented services in wide range of areas.\nIOE provides the Internet facility to its students, faculties and administrative staffs of all campuses. All the blocks at central campus Pulchowk are linked through campus wide fiber optic backbone connecting all the departmental computers with the computer resource center at CIT and advanced IT training center (ICTC).",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Library Resources",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: const [
                          "Picture books in many formats, from board books to big books",
                          "Fiction from first chapter books to Young Adult fiction and A-level texts",
                          "Graphic novels",
                          "Collections of Poetry and Folktales",
                          "Examples of Reading schemes",
                          "A selection of Maps, Charts and Posters",
                          "Audiovisual material",
                          "Games, kits and flashcards",
                          "Textbooks covering main curriculum subjects and a variety of exam boards",
                          "Non-fiction background and wider reading books",
                          "Children's Book Corner modelling best primary classroom practice",
                        ],
                        listOrder: ListOrder.ordered,
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      Text(
                        "To supplement the main areas of the collection we also have a Basic Skills collection and journals supporting classroom work.\n\n\nAs our intention is to reflect resources used in English schools, the bulk of the collection is from UK educational and children's publishers, with material also from mainstream charities, voluntary groups, and audiovisual producers. Our aim is to offer a wide selection of high quality and currently available material, however inclusion does not imply recommendation.\n\nWith a few exceptions material from the Curriculum Resources collection can be borrowed for eight weeks and renewed.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
