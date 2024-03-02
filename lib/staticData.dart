import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/models/tag.dart';
import 'package:marketplace/models/user.dart';

List<Product>? products = [
  Product(
      id: '1',
      name: "Soja milk",
      description:
          "Le lait de soja, aussi appelé jus de soja ou boisson au soja est une boisson produite à base de graines de soja et d’eau.",
      tags: [
        Tag(id: '1', name: 'vegetarien'),
      ],
      vendor: User(
          id: '1',
          name: 'Marif Mohammed',
          email: 'marifMoh@gmail.com',
          phone: "0559678890"),
      image:
          'https://s3-alpha-sig.figma.com/img/627f/ee53/9189d7399ba3c847af5db12259f99d40?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PAYNZyU-vwCycT949kJbZRfDPmlOZzvDqTJvtoxNZpf0BzawkOMlydhHp-4oSiK-Mo-KVWgEKriYMb6JOx2De8QqGZ~4Zobx9ad~9ntHspwqvMdm3m05LrTfWgB44Lx5ASZu1QIIaDVx3TMg1EbhzRgLxgikUFi-SPb03mWzPjwet4ijrNIcTy8E3dgqBVF~rYV4B7Fdyiv1sGvgyOXrgmQb7EtM~gDOjIpYp2INveVsNWvZJkKhb1LFLbvWqVDMl71DUKev65pGkmA35WD2emFFKf375jmQZTmkjxKzJS950azTXAW7Rwqr-GYuTD5kHmufXRWmyUoGZ8CkBdpftw__',
      price: 500),
  Product(
      id: '2',
      name: "Nestle cereal",
      description:
          "Les céréales FITNESS ® trouvent le parfait équilibre entre sain et savoureux, pour que vous puissiez en profiter chaque matin. Avec du blé entier et de l'avoine entière soigneusement sélectionnés, nous proposons de délicieux flocons croquants, du granola et des barres dans une grande variété de goûts. Choisissez FITNESS ® pour bien commencer votre journée !",
      tags: [
        Tag(id: '1', name: 'vegetal'),
      ],
      vendor: User(
          id: '2',
          name: 'Salim salmi',
          email: 'salmisalim@gmail.com',
          phone: "0559673430"),
      image:
          'https://www.nestle-cereals.com/global/sites/g/files/qirczx806/files/styles/1_1_768px_width/public/2022-06/Fitness_Mobile_ENG%20%281%29.png.webp?itok=mDBOEdKx',
      price: 900),
  Product(
      id: '3',
      name: "Farine sans gluten",
      description:
          "Le Mix 3 Farines est un subtil mélange de farines de riz, de pois chiche et de maïs. Grâce à ce mélange, inutile d'accumuler les farines dans vos placards. Vous avez ainsi à portée de main, un mix pour réaliser vos recettes salées et sucrées.",
      tags: [
        Tag(id: '1', name: 'sans gluten'),
      ],
      vendor: User(
          id: '2',
          name: 'Salim salmi',
          email: 'salmisalim@gmail.com',
          phone: "0559673430"),
      image:
          "https://www.bjorg.fr/wp-content/uploads/2020/09/mix-3-farines-sans-gluten-853x583.png",
      price: 300),
  Product(
      id: '1',
      name: "Biscotte sans sel",
      description:
          "Dégustez la savoureuse biscotte sans Sel Cœurs de céréales.Parfaite pour bien démarrer la journée ! Dégustez avec de la confiture, une noix de beurre ou tout simplement nature !",
      tags: [
        Tag(id: '1', name: 'sans sel'),
      ],
      vendor: User(
          id: '2',
          name: 'Salim salmi',
          email: 'salmisalim@gmail.com',
          phone: "0559673430"),
      image:
          "https://coeurdecereales.com/wp-content/uploads/2022/03/Boite_Biscotte_sans-sel_200G.jpg",
      price: 500),
];
List<Tag> tags = [
  Tag(id: '1', name: "tout"),
  Tag(id: '1', name: "sans gluten"),
  Tag(id: '1', name: "sans sucre"),
  Tag(id: '1', name: "sans sel"),
  Tag(id: '1', name: "sans lactose"),
  Tag(id: '1', name: "vegetarien"),
];
Map tagColor = {
  "sans sucre": Color(0xFFFFC793),
  "sans sel": Color(0xFF999999).withOpacity(0.8),
  "sans gluten": Color(0xFFFDE63F),
  "sans lactose": Color(0xFF3FB9FD),
  "vegetarien": Color(0xFF62C7A3),
};

User user = User(
    id: '1',
    name: 'Mezdour Salim',
    email: "Mezdoursalim@gmail.com",
    phone: "0557802235");
