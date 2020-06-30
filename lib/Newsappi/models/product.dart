class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 0,
    title: "ΑΝΕΞΕΛΕΓΚΤΕΣ ΦΩΤΙΕΣ - ΡΕΚΟΡ ΣΤΗ ΣΙΒΗΡΙΑ",
    image: "assets/images/brown.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 0,
    title: "ΜΟΝΟ NATURA ΔΕΝ ΘΥΜΙΖΕΙ ΤΟ ΕΘΝΙΚΟ ΠΑΡΚΟ ΣΧΙΝΙΑ",
    image: "assets/images/plastics.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 0,
    title: "Η ΠΕΡΙΒΑΛΛΟΝΤΙΚΗ ΡΥΠΑΝΣΗ ΕΙΝΑΙ ΦΟΡΕΑΣ ΚΑΙ ΤΟΥ ΚΟΡΩΝΟΙΟΥ",
    image: "assets/images/bottle.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
