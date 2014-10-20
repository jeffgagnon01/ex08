//Exercice 8 Question 1 
//  A) Create a list of associations of members, 
//  where a member is represented as a map with the following keys: firstName, lastName and email. 
//  B) Sort the list of members of a given association first by the last name, then by the first name. 
//  C) Provide a way to obtain only members of all associations whose last name starts with a given letter. 

void main() {
// Inspiré du projet https://github.com/leduy10/ex08/
  
//  Q1.
//  A) Create a list of associations of members, 
//  where a member is represented as a map with the following keys: firstName, lastName and email.  
  
  var membres = [  
    {"association": "Information Systems", "firstName": "Dzenan", "lastName": "Ridjanovic","email": "dr@gmail.com"},
    {"association": "Information Systems","firstName": "Robert","lastName": "Nelson","email": "rn@gmail.com"},
    {"association": "Computer Science","firstName": "David","lastName": "Curtis","email": "dc@gmail.com"},
    {"association": "Student", "firstName" : "Jeff", "lastName": "Gagnon", "email": "jeffgagnon@hotmail.com"}, //test
    ];  

//  Q1.
//  B) Sort the list of members of a given association first by the last name, then by the first name.
//  Cf. http://stackoverflow.com/questions/12888206/how-can-i-sort-a-array-list-of-strings-in-dart  
//  Cf. http://docs.ng.dart.ant.c-k.me/angular.filter/OrderByFilter.html
  
  triNom(var membres) {  // Rappel syntaxe : Majuscule pour chaque mot d'une méthode, excepté le premier. 
    membres.sort((x, y) => x["lastName"].compareTo(y["lastName"])); // Source : https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart:core.Comparable
    for (var parametre in membres) {
      print(parametre);
    }
    return (" ");
}
  print (" "); // Rappel space : \n
  print ("Q1. Sort the list of members of a given association by the LAST name :");
  print (triNom(membres));

  triPrenom(var membres) {
    membres.sort((x, y) => x["firstName"].compareTo(y["firstName"])); // https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart:core.Comparable
    for (var parametre in membres) {
      print(parametre);
   }
    return (" ");
}
  print ("Q1. Sort the list of members of a given association by the FIRST name :");
  print (triPrenom(membres));
  

// C) Provide a way to obtain only members of all associations whose last name starts with a given letter.   
  getLastNameLetter(var membres, var lettre) { //https://www.dartlang.org/dart-tips/dart-tips-ep-10.html
    List lettreNom = new List();
    for (var l = 0; l < membres.length; l++) {  // Cf. : Ex04_Q05
      Map lastNameGetter = membres[l];
      var premierelettre = lastNameGetter["lastName"];
      if (premierelettre.startsWith(lettre)) {
        lettreNom.add(lastNameGetter);
      }
    }
    return (lettreNom);
}
  var lettre = "G"; // Insérer la lettre désirée
  print ("Membres dont le nom débute par la lettre : ${lettre}");
  print (getLastNameLetter(membres, lettre));
  
}