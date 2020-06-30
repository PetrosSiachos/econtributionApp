import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Terms of use';

    return Scaffold(

        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Η χρήση της παρούσας εφαρμογής υπόκειται στους όρους που παρατίθενται στη συνέχεια. Η χρήση της εφαρμογής αποτελεί τεκμήριο ότι ο επισκέπτης/ χρήστης έχει μελετήσει, κατανοήσει και αποδεχτεί όλους τους όρους χρήσης της εφαρμογής. Σε περίπτωση που ο επισκέπτης/ χρήστης δεν συμφωνεί με τους όρους χρήσης της παρούσας, οφείλει να μην κάνει χρήση των υπηρεσιών και του περιεχομένου της εφαρμογής. Οι παρόντες όροι χρήσης μπορεί να αναθεωρούνται και να ενημερώνονται οποιαδήποτε στιγμή και χωρίς προειδοποίηση. Παρακαλείσθε να ελέγχετε ανά τακτά χρονικά διαστήματα τους όρους χρήσης της εφαρμογής καθώς η συνεχής χρήση της συνεπάγεται ότι αποδέχεστε αυτές τις αλλαγές."),
              SizedBox(width: 20.0),
              Text("econtribution © all rights reserved"),
            ]
        )
    );


  }
}