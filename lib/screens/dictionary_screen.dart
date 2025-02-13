import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kenyandictionaryapp/components/word_tile.dart';
import 'package:kenyandictionaryapp/components/idiom_tile.dart';
import 'package:kenyandictionaryapp/models/word.dart';
import 'package:kenyandictionaryapp/models/idiom.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  List<Word> words = [
    Word(
        name: 'Freelancer',
        meaning:
            'Huyu ni mtu huezi elewa vile huwa anapata pesa. Leo anaeza kuwa amesota hadi akuombe za kabej na kesho umuone ako Zanzibar akiswim na turtles.'),
    Word(name: 'SHIF', meaning: 'A kind of greed mentioned in the Bible.'),
    Word(
        name: 'Introvert',
        meaning: 'Wait until you get money to see your real personality.'),
    Word(
        name: "Mang'u",
        meaning:
            'This school used to host contests for no other reason but to utterly embarass and instill humility in other schools that thought they are on the same level. Mnapeleka your brightest student anarudi na 2/40 marks anakua traumatised term mzima.'),
    Word(
        name: 'Ras',
        meaning: "Kenya's default name for anyone with dreadlocks."),
  ];

  List<Idiom> idioms = [
    Idiom(
        phrase: "Akili ilikuwa mbali,ulioniona wapi?",
        meaning:
            "Tukipatana kwa barabara alafu uone sijakuangalia, wewe jua milikuona wa kwanza na nikaangalia mbele ndio nikulenge."),
    Idiom(
        phrase: "Kiasi nakupigia",
        meaning:
            "The 'kiasi' could be anywhere between now till kingdom come. Ukimcall coz the 'kiasi' ni kama hafiki, anakuambia 'Huskia ata nilikua nikucall sahii' "),
    Idiom(
        phrase: "Nifunze salamu za kikwenu",
        meaning:
            "Mkifika hapa kwa talking stage, jua the heart has taken over the decision making duties from the brain. After this question make sure hamuachani.Ju sasa, utaongelesha nani kitaita ."),
    Idiom(
        phrase: "Take care",
        meaning:
            "Kuna watu ukiwatumia hii text wanaeza dhani unawatishia areply 'ata wewe chunga sana!' Hawajazoea kupata hii text every morning. Yeye hutoka tu kwa hao asubuhi anarudi jioni kama mbuzi."),
    Idiom(
        phrase: "Tunaeza meet?",
        meaning:
            "Mtabond vizuri sana na mtu kwa DM lakini ukishauliza hii swali, inaeza fanya akwambie ako Qatar mjengo."),
  ];

  bool showBookmarksOnly = false;

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      for (var word in words) {
        word.isBookmarked = prefs.getBool('word_${word.name}') ?? false;
      }
      for (var idiom in idioms) {
        idiom.isBookmarked = prefs.getBool('idiom_${idiom.phrase}') ?? false;
      }
    });
  }

  Future<void> _toggleWordBookmark(Word word) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      word.isBookmarked = !word.isBookmarked;
      prefs.setBool('word_${word.name}', word.isBookmarked);
    });
  }

  Future<void> _toggleIdiomBookmark(Idiom idiom) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      idiom.isBookmarked = !idiom.isBookmarked;
      prefs.setBool('idiom_${idiom.phrase}', idiom.isBookmarked);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Word> displayedWords =
        showBookmarksOnly ? words.where((w) => w.isBookmarked).toList() : words;
    List<Idiom> displayedIdioms = showBookmarksOnly
        ? idioms.where((i) => i.isBookmarked).toList()
        : idioms;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kenyan Dictionary"),
          actions: [
            IconButton(
              icon: Icon(showBookmarksOnly ? Icons.bookmark : Icons.search),
              onPressed: () {
                setState(() {
                  showBookmarksOnly = !showBookmarksOnly;
                });
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: "Words"),
              Tab(text: "Idioms"),
              Tab(icon: Icon(Icons.bookmark)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: displayedWords.length,
              itemBuilder: (context, index) {
                return WordTile(
                  word: displayedWords[index],
                  onBookmarkToggle: () =>
                      _toggleWordBookmark(displayedWords[index]),
                );
              },
            ),
            ListView.builder(
              itemCount: displayedIdioms.length,
              itemBuilder: (context, index) {
                return IdiomTile(
                  idiom: displayedIdioms[index],
                  onBookmarkToggle: () =>
                      _toggleIdiomBookmark(displayedIdioms[index]),
                );
              },
            ),
            ListView(
              children: [
                ...words.where((w) => w.isBookmarked).map(
                      (w) => WordTile(
                          word: w,
                          onBookmarkToggle: () => _toggleWordBookmark(w)),
                    ),
                ...idioms.where((i) => i.isBookmarked).map(
                      (i) => IdiomTile(
                          idiom: i,
                          onBookmarkToggle: () => _toggleIdiomBookmark(i)),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
