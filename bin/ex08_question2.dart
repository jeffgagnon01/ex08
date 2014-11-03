// Exercice 8 Question 2 (from scratch) 
// Create a class model with associations and members.
// Provide the maintenance of the model by providing additions, removals and updates of entities. 


// 2.1 Create a class model with associations...
class Association {
  String asso;  //propriétés
  String nom;
  String description;
  var assoMember = new List();

  Association(var this.asso, var this.nom, var this.description); // dans l'ordre

  String toString() {  
  return "Liste des associations :\n Association: ${asso}\n But : ${nom}\n Description : ${description}";
   }

// 2.2 Provide the maintenance of the model by providing additions, removals and updates of entities. 
  
  addMember(Member member) {  // Cf. Ondart example : change_item.dart
      assoMember.add(member);
  }
  
  deleteMember(String email) {
    for (var i = 0; i < assoMember.length; i++) {
      if (assoMember[i].email == email) {
          assoMember.removeAt(i);
      }
    }
  }

  editMember(String asso, String prenom, String nomfamille, String email) {
    for (var i = 0; i < assoMember.length; i++) {
      if (assoMember[i]["Prénom"] == prenom && assoMember[i]["Nom de famille"] == nomfamille) {
          assoMember[i]["Asso"] = asso;
           assoMember[i]["Prénom"] = prenom;
          assoMember[i]["Nom de famille"] = nomfamille;
         assoMember[i]["email"] = email;
      }
    }
  }
}
// 2.1 Create a class model with members
class Member {   
  String asso;
  String prenom;
  String nomfamille;
  String email;
  var memberList = new List();

  Member(String this.asso, 
         String this.prenom, 
         String this.nomfamille, 
         String this.email);

  String toString() {
    return "\nMembre :\n Association : ${asso} \n Prénom: ${prenom}\n" 
           " Nom de famille: ${nomfamille}\n email: ${email}\n";
 }
  
// 2.2 Provide the maintenance of the model by providing additions, removals and updates of entities.
  addAssociation(Association association) {
     memberList.add(association);
  }
  deleteAssociation(Association association) {
    for (var i = 0; i < memberList.length; i++) {
      if (memberList[i].nom == association.nom) {
          memberList.removeAt(i);
      }
    }
  }
}

Question2() {
List vert = new List();
var association1 = new Association("Protection environementale", "Comité Vert", "Ouvert à tous");
var member1 = new Member("Comité Vert", "David", "Suzuki", "dsuzuki@vert.org");
vert.add(member1); 
var member2 = new Member("Comité Vert", "Steven", "Guillbeault", "sguillbeault@vert.org");
vert.add(member2);

List vulgar = new List();
  var association2 = new Association("Vulgarisation scientifique", "Génial!", "Pour les moins de 16 ans");
  var member4 = new Member("Génial!", "Stéphane", "Bélavance", "sbelavance@genial.ca");
  vulgar.add(member4);
  var member5 = new Member("Génial!", "Martin", "Carli", "mcarli@genial.ca");
  vulgar.add(member5);

// 2.2 Provide the maintenance of the model by providing additions, removals and updates of entities.
// Ajout et délétion d'un membre ultérieurement
  var member6 = new Member("Vulgarisation scientifique", "Jean-Francois", "Gagnon", "jeffgagnon@genial.ca");
  vulgar.add(member6);
  association1.addMember(member6);

//vulgar.deleteMember(member6); //Pr. Dzenan, Pourquoi ne fonctionne pas ?
//association2.editMember("Nouvel association", "Mathieu", "Gagnon", "mathgagnon@genial.ca");

print("\nQuestion 2. Create a class model with associations and members \n");
print("$association1 $vert\n");
print("$association2 $vulgar\n");
}

main() {
Question2();
}

// 20-OCT-2014 : Je n'ai malheureusement plus aucun temps à consacrer à ce devoir (raisons familiales et autres examens de mi-session).  
// Désolé. Bien vouloir m'évaluer sur la question 1 que j'ai complétée uniquement...

// Update 03-NOV-2014 : Merci d'avoir ajouté 2 semaines à la remise de ce devoir ! 
  
 