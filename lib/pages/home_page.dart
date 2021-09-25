import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayur/model/food_class.dart';
import 'package:sayur/model/sayur.dart';
import 'package:sayur/services/services.dart';
import 'package:sayur/templates/app_color.dart';
import 'package:sayur/templates/app_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var array_ingredients = [
    {'text': 'Carrot', 'image': 'assets/images/lettuce.png'},
    {'text': 'Tomato', 'image': 'assets/images/lettuce.png'},
    {'text': 'Coconut', 'image': 'assets/images/lettuce.png'},
    {'text': 'Grapes', 'image': 'assets/images/lettuce.png'},
    {'text': 'Aubergi..', 'image': 'assets/images/lettuce.png'},
    {'text': 'Banana', 'image': 'assets/images/lettuce.png'},
    {'text': 'Strawberry', 'image': 'assets/images/lettuce.png'},
    {'text': 'Corn', 'image': 'assets/images/lettuce.png'},
  ];

  var foodSearchCriteria = null;
  var foods = [];
  var sayur_food = null;
  var sayur_veggies = null;

  getData() async {
    FoodClass rawFood = await Services.getSayur();
    Sayur rawSayur = await Services.getSayur2();
    log(rawSayur.toString());
    print(rawSayur);

    // Services.getYummlyRecipes();
    print('atas');
    print(rawFood);

    if (rawFood != null) {
      print(rawFood);
      setState(() {
        foodSearchCriteria = rawFood.foodSearchCriteria;
        foods = rawFood.foods[0].foodNutrients;
      });
    }

    if (rawSayur != null) {
      print(rawSayur.data.fruit);
      setState(() {
        sayur_food = rawSayur.data.fruit;
        sayur_food = rawSayur.data.vegetable;
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.superWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.superWhiteColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: AppColor.blackColor),
        ),
        leading: Icon(
          Icons.menu_outlined,
          color: AppColor.blackColor,
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: AppColor.blackColor,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            searchBar(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ingredients'),
                  InkWell(
                    child: Icon(Icons.chevron_right_outlined),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              children: List.generate(array_ingredients.length, (index) {
                return ingredientsTemplate(array_ingredients[index]['text'],
                    array_ingredients[index]['image']);
              }),
            ),
            // ingredients(),
            SizedBox(height: 50),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => poster(index),
              ),
            ),
            // this one below is just for showing that my API from Rapid API been working well
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foods.length,
                itemBuilder: (BuildContext context, int index) =>
                    poster2(index, foods[index].nutrientName),
              ),
            ),

            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated Menus'),
                  InkWell(
                    child: Icon(Icons.chevron_right_outlined),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) =>
                    topRatedMenus(index),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sayur Menus (Food)'),
                  InkWell(
                    child: Icon(Icons.chevron_right_outlined),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) =>
                    sayurList(index, sayur_food.index.food.label),
              ),
            ),
          ],
        ),
      ),
    );
  }

  searchBar() => Container(
        width: double.infinity,
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.search_outlined),
            enabledBorder: InputBorder.none,
            labelText: 'Find food here...',
          ),
        ),
      );

  ingredients() => Container(
        padding: EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ingredients'),
                InkWell(
                  child: Icon(Icons.chevron_right_outlined),
                  onTap: () {},
                ),
              ],
            ),
            Row(
              children: [
                ingredientsTemplate('Carrot', 'assets/images/lettuce.png'),
                ingredientsTemplate('Tomato', 'assets/images/lettuce.png'),
                ingredientsTemplate('Coconut', 'assets/images/lettuce.png'),
                ingredientsTemplate('Grapes', 'assets/images/lettuce.png'),
              ],
            ),
            Row(
              children: [
                ingredientsTemplate('Carrot', 'assets/images/lettuce.png'),
                ingredientsTemplate('Tomato', 'assets/images/lettuce.png'),
                ingredientsTemplate('Coconut', 'assets/images/lettuce.png'),
                ingredientsTemplate('Grapes', 'assets/images/lettuce.png'),
              ],
            ),
          ],
        ),
      );

  ingredientsTemplate(String text, String image) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 85,
              height: 85,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColor.greyColor),
              ),
            ),
            Text(text),
          ],
        ),
      );

  poster(int index) => Container(
        width: 200,
        height: 150,
        margin: (index > 0)
            ? EdgeInsets.only(right: AppSize.globalMargin)
            : EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/lanskap.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
      );

  poster2(int index, String text) => Container(
        width: 200,
        height: 150,
        margin: (index > 0)
            ? EdgeInsets.only(right: AppSize.globalMargin)
            : EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
        decoration: BoxDecoration(
            color: AppColor.lightGreyColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(text),
        ),
      );

  topRatedMenus(int index) => Container(
        width: 150,
        height: 150,
        margin: (index > 0)
            ? EdgeInsets.only(right: AppSize.globalMargin)
            : EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/lanskap.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
      );

  sayurList(int index, String text) => Container(
        width: 150,
        height: 150,
        margin: (index > 0)
            ? EdgeInsets.only(right: AppSize.globalMargin)
            : EdgeInsets.symmetric(horizontal: AppSize.globalMargin),
        decoration: BoxDecoration(
            color: AppColor.lightGreyColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(text),
        ),
      );
}
