import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:walletApp/model/service_model.dart';
import 'package:walletApp/model/transaction_model.dart';
import 'package:walletApp/style/style_guild.dart';
import 'package:walletApp/widget/expand_widget.dart';
import 'package:walletApp/widget/mycard.dart';
import 'package:walletApp/widget/service_widget.dart';
import 'package:walletApp/widget/transaction_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey,
      body: Stack(
        children: [
            HeaderBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
          SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Hello",
                            style: helloTextStyle,),
                            SizedBox(height: 4,),
                            Text(" S M H ",
                            style: userNameTextStyle,),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRh7vPzrH5cpiunOt4h6IJ1zNKmOnBd3TqoEA&usqp=CAU")
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                MyCard(
                  screenHeight: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 16,
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: PieChart(
                            PieChartData(
                              centerSpaceRadius: 35,
                              startDegreeOffset: -120,
                              sectionsSpace: 0,
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sections: [
                                PieChartSectionData(
                                  value: 35,
                                  color: color1,
                                  title: "35%",
                                ),
                                PieChartSectionData(
                                  value: 35,
                                  color: color2,
                                  title: "15%",
                                ),
                                PieChartSectionData(
                                  value: 35,
                                  color: color3,
                                  title: "45%",
                                )
                              ]
                            )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 16,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("\$12391",style: cardAmountTextStyle,),
                              SizedBox(height: 5,),
                              Text("Avaliable Balance",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15
                              ),),
                              TransactionWidget(
                                amount: "59.99",
                                income: false,
                                label: "Spend",
                              ),
                              TransactionWidget(
                                income: true,
                                amount: "59.99",
                                label: "Earned",
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: MyCard(
                    screenHeight: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Services",
                                             style: cardAmountTextStyle.copyWith(fontSize: 18),),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: GridView.builder(
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                crossAxisCount: 4,),
                                  itemCount: services.length,
                                  itemBuilder: (context, index) {
                                    return ServiceWidget(
                                      bgColor: services[index].iconColor,
                                      iconData: services[index].iconData,
                                      label: services[index].label,
                                    );
                                  },
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    height: MediaQuery.of(context).size.height/2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2,spreadRadius: 2,
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Recents",style: cardAmountTextStyle.copyWith(fontSize: 18), ),
                              Text("View All", style: TextStyle(color: color2),)
                            ],
                          )
                        ),
                        Expanded(
                          flex: 12,
                          child: ListView(
                            children: [
                              for(final tran in transactions)
                                ExpandWidget(
                                  name: tran.name,
                                  date: tran.date,
                                  amount: tran.amount,
                                )
                            ],
                          )
                        )
                      ],
                    ),
                  )
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderBackground extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const HeaderBackground({Key key, this.screenHeight, this.screenWidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight*0.3,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32)
        )
      ),
    );
  }
}

