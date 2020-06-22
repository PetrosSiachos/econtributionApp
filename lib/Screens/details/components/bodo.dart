import 'package:econtribution/Screens/home_company/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/screens/details/components/item_image.dart';
import 'package:econtribution/screens/details/components/order_button.dart';
import 'package:econtribution/screens/details/components/title_price_rating.dart';


// ignore: must_be_immutable
class Bodo extends StatelessWidget {
  static String a;
  final String ok ="assets/images/" + a;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: ok ,
        ),
        Expanded(
          child: ItemInfo(
            ok: a,
          ),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  final String ok;
  const ItemInfo({
    Key key, this.ok,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String text1 , text2;
    if (ok == "parrot.png"){
      text1 = "Peter";
      text2 = "O Peter γεννήθηκε με μια κληρονομική πάθηση που του προκάλεσε παραμόρφωση. Ο άνθρωπος που τον είχε προσπάθησε να τον πουλήσει έξω από ένα παντοπωλείο αλλά τελικά απλά τον παράτησε, αφού κανείς δεν τον ήθελε.";
    }
    if (ok == "dog.png"){
      text1 = "Molly";
      text2 = "Μια γυναίκα είδε την Molly και την μετέφερε σε ένα καταφύγιο και από εκεί βρήκε, ίσως για πρώτη φορά, αγάπη. Εκανε τρεις χειρουργικές επεμβάσεις και περπατά με τα τρία της πόδια. Ζει σαν κουτάβι σε σώμα πεντάχρονου σκύλου.";
    }
    if (ok == "turtle.png"){
      text1 = "Andrew";
      text2 = "Bρέθηκε στις θάλασσες της Κρήτης. Είχε αρκετές πληγές και τραυματισμούς μετά από επίθεση από άνθρωπο. Ο Andrew μεταφέρθηκε σε καταφύγιο.";
    }
    if (ok == "close.jpg"){
      text1 = "John";
      text2 = "Η Κάρεν Ρότζερς αποφάσισε να τον φιλοξενήσει προσωρινά αλλά τελικά τον ερωτεύτηκε και τον υιοθέτησε. Τέσσερις μήνες μετά την υιοθεσία ο John είχε μια οικογένεια και ένα «χαμόγελο» μέχρι τα... αυτιά. Κάνει φίλους, σκυλιά και ανθρώπους, όπου και αν βρεθεί και είναι πλέον ένα χαρούμενο σκυλί. Βοηθησε τον να συνεχίσει να χαμογελά!!!";
    }
    if (ok == "bear.png"){
      text1 = "Mike";
      text2 = "Πέρυσι το καλοκαίρι δεχτήκαμε αρκετές κλήσεις από την περιοχή του Μάλεμε για μια αρκούδα που περιφερόταν μετά βίας έξω από το ΙΝΚΑ, φανερά καταβεβλημένη και άρρωστη, με πληγές σε όλο της το σώμα. Πλέον έχει μεταφερθεί σε καταφύγιο και περιμένει τη βοήθειά σου.";
    }
    if (ok == "plastics.png"){
      text1 = "Σχινιάς";
      text2 = "Οποιος πάει αυτές τις μέρες για μπάνιο στον Σχινιά θα διαπιστώσει ότι στο δάσος γίνεται ένας μικρός χαμός. Το πιο χαρακτηριστικό ίσως είναι ο όγκος των σκουπιδιών και των πλαστικών που αφήνουμε πίσω μας όταν τα επισκεπτόμαστε.";
    }
    if (ok == "tree.png"){
      text1 = "Σέιχ Σου";
      text2 = "Τι ωφέλεια έχει ο άνθρωπος, όμως, από την ύπαρξη των δασών; Αν θελήσουμε να βάλουμε έναν τίτλο στις ωφέλειες και τις λειτουργίες που επιτελούν, αυτός θα ήταν: «οικολογική ισορροπία και ευημερία των ανθρώπινων κοινωνιών». Βοήθησε μας να τα διασώσουμε";
    }
    if (ok == "brown.png"){
      text1 = "Εθνικός Δρυμός Βίκου";
      text2 = "Σήμερα στο δάσος ευδοκιμούν 277 είδη ανώτερων φυτών, μεταξύ των οποίων και κάποια προστατευόμενα είδη όπως το χελιδονόχορτο. Υπάρχουν εκτεταμένα πευκοδάση, αλλά και κυπαρίσσια, πουρνάρια και πλατάνια. Βοηθησέ μας να το αναδασώσουμε απο την αρχή!!!";
    }
    if (ok == "trash.png"){
      text1 = "Φοινικόδασος του Βάι";
      text2 = "Ένα δάσος διαφορετικό από τ’ άλλα, που συνθέτει μια τροπική εικόνα, το φοινικόδασος του Βάι βρίσκεται στο ανατολικό άκρο της Κρήτης, στο νομό Λασιθίου, δίπλα στη θάλασσα, στις κρητικές ακτές του Καρπάθιου πελάγους, σε απόσταση 20 περίπου χιλιομέτρων από τη Σητεία. Εκεί συναντάμε τον ενδημικό κρητικό φοίνικα και το δάσος αποτελεί ένα από τα 19 αισθητικά δάση.";
    }

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "Greece"),
          TitlePriceRating(
            name: text1,
            onRatingChanged: (value) {},
          ),
          Text(
            text2,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreenB(
                      ok: ok,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
