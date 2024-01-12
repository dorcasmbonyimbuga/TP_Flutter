import 'package:first/Etudiant%20.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  // appelle premiere fonction
  print("====Affichage de la premiere fonction:Etat de la personne===");
  print(etatPersonne(50, "M"));

  // appelle deuxieme fonction
  print("====Affichage de la deuxieme fonction:Affichage Bonjour===");
  print(afficheBonjour(5));

  // appelle troisieme fonction
  List<double> solutions = eqtSeconDegre(1, -3, 2);
  print("Affichage troisieme fonction:Equation du second degre:delta,x1 et x2");
  print(solutions);

  // appelle quatrieme fonction
  print("====Affichage de la quatrieme fonction:Moyenne de 5 nombres===");
  print(moyenne(3, 4.2, 9.8, 44, 3));

  // appelle cinquieme fonction
  print("====Affichage de la cinquieme fonction:Factoriel d'un nombre===");
  print(factoriel(5));

  // appelle de la classe Etudiant(creation objet)
  Etudiant etu = new Etudiant();
  etu.SetId(1);
  etu.SetNom("DORCAS");
  etu.SetPostnom("MBONYIMBUGA");
  etu.SetPrenom("Promesse");
  etu.SetSexe("F");
  etu.SetAge(21);
  etu.SetDate("16/Janvier/2003");
  etu.SetPoids(58);
  etu.SetTaille(16);

  print("====================POO========================");

  print(etu.GetId());
  print(etu.GetNom());
  print(etu.GetPostNom());
  print(etu.GetPreNom());
  print(etu.GetSexe());
  print(etu.GetAge());
  print(etu.GetDate());
  print(etu.GetPoids());
  print(etu.GetTaille());
}

//Fonction qui retourne l'etat de la personne
String etatPersonne(int age, String genre) {
  String resultat = "";

  if (genre == "F" && age >= 18 && age < 100) {
    resultat = "Vous etes une majeure !";
  } else if (genre == "M" && age >= 18 && age < 100) {
    resultat = "Vous etes un majeur !";
  } else if (genre == "F" && age < 18 && age > 0) {
    resultat = "Vous etes une mineure !";
  } else if (genre == "M" && age < 18 && age > 0) {
    resultat = "Vous etes un mineur !";
  } else {
    resultat = "Veillez verifier les informations entrer";
  }
  return resultat;
}

//=========================================================
//Fonction qui affiche Bonjour le monde selon le nombre voulu
String afficheBonjour(int nombre) {
  String message = "";
  for (int i = 0; i < nombre; i++) {
    message += "Bojour le monde\n";
  }
  return message;
}

//=========================================================
//Fonction qui resoud l'equation du second degre

List<double> eqtSeconDegre(double a, double b, double c) {
  double delta = ((b * b) - (4 * a * c));

  if (delta > 0) {
    double x1 = ((-b + sqrt(delta)) / (2 * a));
    double x2 = ((-b - sqrt(delta)) / (2 * a));
    return [delta, x1, x2];
  } else if (delta == 0) {
    double x = ((-b) / (2 * a));
    return [delta, x];
  } else {
    return [delta];
  }
}

//=========================================================
//Fonction qui renvoie la moyenne de 5 nombres
double moyenne(double a, double b, double c, double d, double e) {
  double result = (a + b + c + d + e) / 5;
  return result;
}

//=========================================================
//Fonction qui retourne le factoriel d'un nombre
double factoriel(double nombre) {
  if (nombre == 0 || nombre == 1) {
    return 1;
  } else if (nombre > 1) {
    double fact = 1;
    for (int i = 2; i <= nombre; i++) {
      fact *= i;
    }
    return fact;
  } else {
    return 0;
  }
}
