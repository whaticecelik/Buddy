// açılış ekranı için
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(


        
        children: [
          // Logo ve yükleme  bölümü
          Expanded(
            //width: double.infinity,
              child: Column(
                children: [
                  // Logo bölümü
                SizedBox(height: 100,),
               //CircularProgressIndicator(),
               Text("Buddy", style: Theme.of(context).textTheme.displayLarge,),


                InkWell(
                  onTap: () => context.go("/home"),
                  child: SizedBox(
                    width: 300,
                    child: DotLottieLoader.fromAsset("assets/motions/loading.lottie", 
                        frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                      if(dotlottie != null){
                        return Lottie.memory(dotlottie.animations.values.single);
                      } else {
                          return Container();
                      }
                    }),
                  ),
                ),



               SizedBox(height: 20),
              
                Text("Connect, Practice, and Explore! ", style: TextStyle(fontWeight: FontWeight.bold)),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}