import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';


class FollowScreen extends StatelessWidget {
  const FollowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: ()=> context.push("/profile"),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
        children: [
          Expanded(
              child: Column(
                children: [
                SizedBox(height: 100,),
                  SizedBox(
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
                Text("Loading...", style: Theme.of(context).textTheme.titleLarge,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}