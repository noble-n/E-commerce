import 'package:ecommerce/AppUtils/global.colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/BottomNavBar.dart';
class MoreOptionsScreen extends StatefulWidget {
  const MoreOptionsScreen({Key? key}) : super(key: key);

  @override
  State<MoreOptionsScreen> createState() => _MoreOptionsScreenState();
}
class _MoreOptionsScreenState extends State<MoreOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
                  decoration: BoxDecoration(
                    color: GlobalColors.primaryColor
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Store",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.shopping_cart_rounded,color: Colors.white,size: 30,),
                                const Icon(Icons.notifications,color: Colors.white,size: 30,),
                                const SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(builder: (context) => Profile()),
                                    // );
                                  },
                                    child: const CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage('Images/profilepicture.png'),
                                    ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Categories(),
                            Container(
                              height: 90,
                              width: 600,
                              decoration: BoxDecoration(
                                  color: GlobalColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: Text(
                                    "Offer Details",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const VerticalListItem(text: "All Category", icon: Icons.category),
                            const VerticalListItem(text: "Coupons", icon: Icons.discount),
                            const VerticalListItem(text: "Notifications", icon: Icons.notifications),
                            const VerticalListItem(text: "Chats", icon: Icons.chat_sharp),
                            const VerticalListItem(text: "Settings", icon: Icons.settings),
                            Divider(color: GlobalColors.primaryColor,thickness: 0.8),
                            const SizedBox(height: 10,),
                            const VerticalListItem(text: "Privacy Policy", icon: Icons.security),
                            const VerticalListItem(text: "Help Center", icon: Icons.help_center),
                            const VerticalListItem(text: "Product reviews", icon: Icons.reviews),
                            const VerticalListItem(text: "FAQs", icon: Icons.question_answer),
                            const VerticalListItem(text: "App Info", icon: Icons.app_shortcut),
                            const VerticalListItem(text: "Log Out", icon: Icons.logout),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

//GUY DON'T QUESTION WHAT I NAME MY WIDGETS YOU FRAUD.
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  var list = ['Orders','Cart','Offers','Wishlist'];
  var icons = [
    const Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 40,),
    const Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 40,),
    const Icon(Icons.local_offer_outlined,color: Colors.white,size: 40,),
    const Icon(Icons.favorite_outline_outlined,color: Colors.white,size: 40,),

  ];
  @override
  Widget build(BuildContext context){
    return GridView.builder(
        itemCount: list.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.9
        ),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
              },
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      alignment: Alignment.center,
                      //height: 10,
                      decoration: BoxDecoration(
                        color: GlobalColors.primaryColor,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: icons[index],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    list[index],
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}

class Headings extends StatelessWidget {
  const Headings({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "View all >",
          style: TextStyle(
            color: GlobalColors.primaryColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({Key? key,required this.text,required this.icon}) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: GlobalColors.primaryColor,
              size: 33,
            ),
            const SizedBox(width: 15,),
             Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
