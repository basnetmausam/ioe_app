import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About IOE",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "History Of IOE",
              style: Theme.of(context).textTheme.headline2,
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
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "History of engineering education dates back to vedic period. Different literatures, such as; Vastushastra, Vastupuran, Vasturatnakar, Vastusar, Vastumandan, Mayamatam, Manashar, Matsyapuran, Mahabharat, Prashadmandan, Shukraniti, Brihatsamhita etc. have shaded light in different dimension of engineering knowledge and skills. The Takshashila, Nalanda and other universities of the early periods were some eminent institutions delivering formal engineering education. In the historical period, there was more informal technical education, transferring technology from generation to generation through experiences. The great legend Balabahu (Araniko) was the architect of the 13th century, well-known for establishing new history of pagoda architecture in China. Vocational education was very much popular in Kathmandu valley during Malla period as a tool to increase revenue. There was a special degree for citizens to learn some kind of skills and involve in production and business. Malla period was famous for handicraft. It was the golden period for all types of architectures. The kings from parts other than valley were also found to be cautious on the importance of technical works. During Rana dynasty (1846-1950) Mr. Bir Shamsher was found to be aware of the technical education for the development of the country. As a result of this, his son, Gehendra Shamsher, along with other 5 students were sent to Japan for higher engineering study. They were the pioneer engineers taking formal engineering degree in modern engineering education in Nepal.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Formal technical education started in 1930 (1987/11/19 B.S.) after the establishment of technical school in Kumari Chowk, Kathmandu. At the beginning, this school began the trade course on textile skill. In 1942 (1998/10/17 B.S.), engineering section was introduced in the school offering two years sub-overseer course for SLC graduates. This school was shifted to Tri-chandra campus in 1945 and renamed as engineering school in 1950. It was in 1958 that this school was accepted as a formal institution to deliver engineering education and once again renamed as Nepal Engineering Institute and it was shifted to Nepal Administrative Training Council complex, Jawalakhel at the beginning of 1958. By the end of same year 1958, it was taken to Ananda Niketan, Pulchowk. It offered overseer course in civil engineering and later on in 1971 offered electrical overseer course. In 1963, technical training institute was established in Thapathali under the assistance of German Government offering overseer course in mechanical and electrical engineering.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "After the introduction of New Education System Plan in 1972 in the country, Institute of Engineering (IOE) was formed under Tribhuvan University and both the Nepal Engineering Institute and Technical Training Institute were brought under Institute of Engineering. Nepal Engineering Institute was renamed as Pulchowk Campus and Technical Training Institute was renamed as Thapathali Campus. Followed by the government policy of expanding engineering education, Purwanchal campus was established in 1977 at Dharan in the eastern part of the country under the financial assistance of Asian Development Bank (ADB). The academic programs were began from 1984 with the technical assistance of overseas development assistance (ODA), an organ of British government. Initially, trade courses and proficiency level courses in various engineering areas were offered in the campus. Similarly, Paschimanchal Campus was established in 1981 at Pokhara in the western region of Nepal under the financial assistance of World Bank and technical assistance of UNDP/ILO. This campus was brought into operation from 1987. Initially, various trades and technician courses were offered at this campus.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Institute of engineering begin bachelor courses in engineering from 1978, master coursed from 1996 and doctoral program from 2003. By now, bachelor’s, master’s and doctoral programs are run in Central campus Pulchowk. Bachelor’s courses are run in the Thapathali campus, Purwanchal campus and Paschimanchal campus. IOE is in the process of strengthening bachelor courses and consolidating master and doctoral programs. IOE is now delivering its services from four constituent campuses and ten affiliated colleges.",
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
