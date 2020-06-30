import 'package:econtribution/Screens/details_company/components/order_button.dart';
import 'package:econtribution/Screens/postScreen/post.dart';
import 'package:flutter/material.dart';
import 'package:econtribution/constants.dart';
import 'package:econtribution/screens/details/components/item_image.dart';
import 'package:econtribution/screens/details/components/title_price_rating.dart';


// ignore: must_be_immutable
class Bodi extends StatelessWidget {
  static String a;
  static String first;
  final String ok ="assets/images/" + a + ".png";



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
            first: first,
          ),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  final String ok;
  final String first;
  const ItemInfo({
    Key key, this.ok, this.first,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String text1 , text2;
    if (ok == "Marvel"){
      text1 = "Marvel";
      text2 = "Η Marvel Comics (προφορά: Μάρβελ Κόμικς) ή απλά Marvel είναι αμερικανική εκδοτική εταιρεία κόμικς, η διασημότερη ίσως στον κόσμο και η μεγαλύτερη των ΗΠΑ μαζί με τη DC Comics.";
    }
    if (ok == "starbucks"){
      text1 = "Starbucks Greece";
      text2 = "Τα Starbucks ιδρύθηκαν το 1971, από ένα δάσκαλο αγγλικών, ένα δάσκαλο ιστορίας και ένα συγγραφέα, και από τότε επεκτάθηκαν πολύ γρήγορα. Από το 1987 μέχρι το 2007, άνοιγαν, κατά μέσο όρο, δύο καταστήματα κάθε μέρα.";
    }
    if (ok == "tesla"){
      text1 = "Tesla";
      text2 = "Η Tesla, inc. είναι μια αμερικανική αυτοκινητοβιομηχανία, η οποία σχεδιάζει, παράγει και πουλάει αμιγώς ηλεκτρικά αυτοκίνητα. Ιδρύθηκε στις 1 Ιουλίου 2003 και είναι μια απο τις μεγαλύτερες εταιρείες.";
    }
    if (ok == "nike"){
      text1 = "Nike";
      text2 = "Η Nike, Inc. είναι αμερικανική πολυεθνική εταιρεία που ασχολείται με το σχεδιασμό, την ανάπτυξη, την κατασκευή και σε παγκόσμιο επίπεδο το μάρκετινγκ και τις πωλήσεις υποδημάτων, ενδυμάτων, εξοπλισμού, εξαρτημάτων και υπηρεσιών.";
    }
    if (ok == "toms"){
      text1 = "Toms";
      text2 = "Οι πωλήσεις παπουτσιών TOMS, Γυαλιών και Καφέ συνεχίζουν το μοντέλο Προσφοράς One for One®. Κάθε φορά που αγοράζετε ένα προϊόν TOMS, βοηθάτε ένα άτομο που έχει ανάγκη.";
    }
    if (ok == "six_dogs"){
      text1 = "Six Dogs";
      text2 = "Το six d.o.g.s είναι ένα all day/all night πολιτιστικό κέντρο διασκεδάσεως στο Ιστορικό Τρίγωνο της Αθήνας, που εγκαινιάστηκε στις 9 Οκτωβρίου του 2009. Συνδυάζει οργανικά ένα Gig Space, ένα Project Space, ένα Bar, ένα Foyer, και έναν Κήπο.";
    }
    if (ok == "zara"){
      text1 = "Zara";
      text2 = "Η Zara είναι εμπορική εταιρεία ένδυσης που ανήκει στον ισπανικό όμιλο Inditex, μαζί με άλλα γνωστά σήματα όπως Massimo Dutti, Pull and Bear, Stradivarius και Bershka. Ο όμιλος έχει την έδρα του στην πόλη Λα Κορούνια της επαρχίας της Γαλικίας, στην Ισπανία, όπου και άνοιξε το πρώτο κατάστημα Ζάρα το 1975.";
    }
    if (ok == "ice"){
      text1 = "Frew & Co";
      text2 = "Μπορούμε να καλύψουμε εκδηλώσεις οποιουδήποτε μεγέθους και στυλ. Σχεδιάζουμε την υπηρεσία μας γύρω από το θέμα και τις απαιτήσεις της εκδήλωσής σας, σχεδόν τα πάντα είναι προσαρμόσιμα. Είμαστε περήφανοι για τα άψογα πρότυπα μας. Το εγγυόμαστε!";
    }
    if (ok == "city"){
      text1 = "Pet City";
      text2 = " Η μεγαλύτερη αλυσίδα καταστημάτων για κατοικίδια στην Αττική! Πάνω από 10.000 σε ανταγωνιστικές τιμές! Δωρεάν αποστολή για παραγγελίες άνω των 250 ευρώ.";
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
          OrderButtonB(
            size: size,
            press: () {
              Post.first = first;
              Post.second = ok;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Post();
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
