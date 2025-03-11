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
        name: 'Alarm',
        meaning:
            "Officially back to my toxic relationship with this app.If it wakes me up, I am angry.If it fails to wake me up, I will be even more angry.It can never win."),

    Word(
    	name: 'champe',
    	meaning: "Ukiona makanga amekugotea alafu akuite na hii jina, jua anataka kukutumia viabaya. Ah niaje champe,si ujifinye pale nyuma uwachie huyu madam akona mtoi hapo. Oya! tupendane hapo nyuma!."),

    Word(
    	name: 'Dust',
    	meaning: " Ile yenye unafaa kuogopa ni ya client pekee.Hii ingine ya mapenzi utajipanguza, ongeza “Hey” ingine. Shame is a mindset."),

    Word(
        name: 'December',
        meaning:
            "Hii ni mwezi kuna wale wanapelekwa kwa mother-in-law, wale wata-attend weddings kama zote, wale wataenda ocha na wale wakutoka kwa nyumba Friday na mia moja na watarudi Monday. If you are not in that list, you are definitely on the list of those being cut off!"),
    
    Word(
    	name: 'Facebook',
    	meaning: "An app we use as photo album for preserving throwback memories. Shida tu ni hizi TBT photos zinapatikana na mabeste zako Hakuna vita ya mdomo utawahi shinda unapiga mtu  banter haina comeback,alafu anachomoa picha zako za 2010 ulika wazimu."),

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
    Word(
        name: 'Status',
        meaning:
            "Pale whatsApp resist the urge to post for us unsolicited advice bana. Kama hupost picha zako, biashara yako or most importantly memes, zima simu ulale. Wewe ndio unafanya internet ikuwe slow."),
    
    Word(
    	name: 'Surebet',
    	meaning: "In life whatever you do and you are certain that you are 99.9 percent there, even at that point  PRAY!."),

    Word(
      name: 'Kona', 
      meaning: "Arsenal'/n s tactics season."),
    
    Word(
    	name: 'Lawyer',
    	meaning: "Hii profession inataka mtu ako slow to anger . Ukipeleka zako huko , mutafungwa na client wako ."),

    Word(
    	name: 'November',
    	meaning: "Ulianza mwaka ukisema huu ni mwaka wa kufosi na lazima tutakuita bossy! Mipango ni ile ile ama form ni “usijinyime ati unasave”."),

    Word(
    	name: 'History',
    	meaning: "Kama kuna watu nahurumia ni watoto wa future generations bana.kila mwezi hii nchi inawaongezea  notes tu..  ."),
    
    Word(
    	name: 'Tiktok',
    	meaning: "In 2020 tungejua life ingekuwa ngumu hivi, tungeingia hi app tuanze-tunadance tu Ati sahi haungekua kwa hio job ukiangalia 5pm itafika saa ngapi uende home.Walai app ingine ikitokea mnichanue, naeka shyness kando nianguke nayo ."),

    Word(
    	name: 'Ugali',
    	meaning: "A meal that should only be eaten for dinner.Try eating it at lunch hour utatii.Ile usingizi ilikutandika chemistry double lesson utaileta kwa kazi ujipate umefutwa."),

    

Word(
    	name: 'X',
    	meaning: ' Everytime I’ /n ve opened this app this week, hasira tu inapanda.'),

Word(
    	name: 'Wozzap',
    	meaning: "An app where our parents upload their selfies on their status with the most random caption."),

    





    
  ];

  List<Idiom> idioms = [
    Idiom(
        phrase: "Akili ilikuwa mbali,ulioniona wapi?",
        meaning:
            "Tukipatana kwa barabara alafu uone sijakuangalia, wewe jua milikuona wa kwanza na nikaangalia mbele ndio nikulenge."),

    Idiom(
    	phrase: "Can never be me!",
    	meaning:
        	"This phrase is full of jinx! Once you say it loud, life then says “haya! We’ll take it from here!” My friend the way it will be you, utadhani umerogwa! It can even happen twice or thrice just to prove to you that the first time wasn’t a mistake"),


    Idiom(
    	phrase: "Guys, hard work pays",
    	meaning:
        	"Hard work gani? The signs are there. U naona vizuri tu sana huyu mtu kuna ka ukora  alifanya ndio aomoke alafu anakupea advice kama hii. Wee tuambie unatoa pesa wapi. Hard Work achia punda."),

    
    Idiom(
    	phrase: "He didn’t deserve you",
    	meaning:
          "Endelea tu kupeana hii advice ya ufala. Watarudiana na atakusema vile unakuanga na roho mbaya hutakiangi mtu mazuri. Stick to 'weuh!...' 'aki pole...' 'Sa utadu?...'"),

    Idiom(
    	phrase: "Hii jua apana.",
    	meaning:
        	"Kenyans complaining because they are being overdosed on vitamin D. This is God trying to show you that you clearly can’t last a day in hell so you better accept your calling of being His strongest soldiers."),

    Idiom(
        phrase: "Kiasi nakupigia",
        meaning:
            "The 'kiasi' could be anywhere between now till kingdom come. Ukimcall coz the 'kiasi' ni kama hafiki, anakuambia 'Huskia ata nilikua nikucall sahii' "),

    Idiom(
    	phrase: "Naanii? Mimi?",
    	meaning:
        	"When you hear rumors about you and they are true but you have to deny it ndio uchanganye watu wa umbea kabisa."),

    Idiom(
    	phrase: "Natransfer next term.",
    	meaning:
        	"Hapa ndio clout chasing ilianza. Badala uende in silence , unaenda ukitangazia shule mzima ndio upewe attention alafu next term mzazi anakupiga character development ."),

    Idiom(
    	phrase: "Ndio ule beste yako.",
    	meaning:
        	"That one friend when they see someone you don’t like just to piss you off. Alafu anakuangalia aone reaction zako."),

    Idiom(
        phrase: "Nifunze salamu za kikwenu",
        meaning:
            "Mkifika hapa kwa talking stage, jua the heart has taken over the decision making duties from the brain. After this question make sure hamuachani.Ju sasa, utaongelesha nani kitaita ."),

    Idiom(
    	phrase: "Niko almost",
    	meaning:
        	"Ukiniuliza nimefika wapi alafu nikujibu hivi, namaanisha niko ka wewe tu. Sijui nitafika saa ngapi, but we jua niko kwa njia nakam."),

    Idiom(
    	phrase: "Niko na karao beste yangu…",
    	meaning:
        	"Huyu ni mtu haelewi mchezo wa taon. Hakuna ubeste iko hapo, hiyo ni corruption. Si ukose pesa tuone kama bado mtakuwa mabeste"),

    Idiom(
    	phrase: "Ni simu tu.",
    	meaning:
        	"When you tell a Kenyan mum that you have a headache."),

    Idiom(
    	phrase: "SI anigonge anilipe.",
    	meaning:
        	"Kenyans when crossing the road. Even an accident is a money making opportunity. Being broke in this country can make you come up with life threatening ideas."),

    
    Idiom(
    	phrase: "Sipendi madrama",
    	meaning:
        	"I am referring to drama that involves me. Hizo jiwekee tafadhali. However, kama ni drama za watu wengine, daaah… nshavaa dera nipe umbea sasa."),



    Idiom(
    	phrase: "Tafakari ya Babu",
    	meaning:
        	"Alikuwa anamaliza news za 7pm kama amekupigia hadithi alafu unaambiwa uelewe vile unataka."),

    Idiom(
        phrase: "Take care",
        meaning:
            "Kuna watu ukiwatumia hii text wanaeza dhani unawatishia areply 'ata wewe chunga sana!' Hawajazoea kupata hii text every morning. Yeye hutoka tu kwa hao asubuhi anarudi jioni kama mbuzi."),
    
    Idiom(
    	phrase: "Transaction charges",
    	meaning:
        	"Kutuma pesa sio shida. Shida ni kuona unakatwa pesa ngapi and that is enough to ruin your day. If it wasn’t for this fees, sai ningekuwa na V8"),

    Idiom(
        phrase: "Tunaeza meet?",
        meaning:
            "Mtabond vizuri sana na mtu kwa DM lakini ukishauliza hii swali, inaeza fanya akwambie ako Qatar mjengo."),

    Idiom(
    	phrase: "Utarudi tu.",
    	meaning:
        	"When you are on vacation enjoying the soft life, this is how Kenyans will let you know that the pressure you are applying on their necks is getting worser!!!"),

    Idiom(
    	phrase: "Unsema wewe, na mimi je?",
    	meaning:
        	"Siku hizi Kenya kusota imekuwa kama competition. Uneleza mtu design umesota alafu before umalizie hiyo story, anakugonga na hii ndiyo hiyo umaskini yako isikufanye ufikirie kumuomba pesa."),
    
    Idiom(
    	phrase: "Na hii mwaka imekimbia.",
    	meaning:
        	"Huyu ni mtu anataka kujua kama ameteseka peke yake hii mwaka ama wako wengi."),
    
    Idiom(
    	phrase: "Si leo",
    	meaning:
        	"Kenyans in traffic. Akiombwa pesa na street kids, si leo. Akiulizwa kitu na hawker, si leo. Ni lini basi wee mzee? Ata tropical ni kitu kupostpone kweli?"),
    
    
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
