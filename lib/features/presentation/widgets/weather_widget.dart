import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:weather/assets/colors.dart';

import '../../../assets/icons.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 124,left: 39,right: 39),
      child: Container(
        decoration: BoxDecoration(
          color: whitishBlue,
          borderRadius: BorderRadius.circular(35)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(15.5),
            Text("22 Jan 2024",style: Theme.of(context).textTheme.displayMedium,),
            const Gap(18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SvgPicture.asset(AppIcons.cloud),
                const Gap(31),
                Text("- 8°",style: Theme.of(context).textTheme.displayLarge,),
              ],
            ),
            const Gap(18.64),
            Text("Snowy",style: Theme.of(context).textTheme.headlineLarge,),
            const Gap(4),
            Text("Tashkent, Uzbekistan",style: Theme.of(context).textTheme.headlineMedium,),
            const Gap(48.44),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16),
               child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Wind speed:",style: Theme.of(context).textTheme.headlineSmall,),
                      const Gap(5.57),
                      Text("Humidity:",style: Theme.of(context).textTheme.headlineSmall,),
                      const Gap(5.57),
                      Text("Cloud:",style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("11.2 km/h",style: Theme.of(context).textTheme.headlineSmall,),
                      const Gap(5.57),
                      Text("71%",style: Theme.of(context).textTheme.headlineSmall,),
                      const Gap(5.57),
                      Text("25%",style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  )
                ],
               ),
             ),
            const Gap(23.25),
          ],
        ),
      ),
    );
  }
}


//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gap/gap.dart';
// import 'package:weather/assets/colors.dart';
//
// import '../../../assets/icons.dart';
// import '../bloc/weather_bloc.dart';
//
// class InfoWidget extends StatelessWidget {
//   const InfoWidget({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<WeatherBloc, WeatherState>(
//       builder: (context, state) {
//         if (state is WeatherLoading) {
//           // Loading state
//           return CircularProgressIndicator();
//         } else if (state is WeatherLoaded) {
//           // Weather data loaded state
//           final location = state.location;
//           final current = state.current;
//
//           return Padding(
//             padding: const EdgeInsets.only(top: 124, left: 39, right: 39),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: whitishBlue,
//                 borderRadius: BorderRadius.circular(35),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Gap(15.5),
//                   Text(location.localtime, style: Theme.of(context).textTheme.displayMedium),
//                   const Gap(18),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SvgPicture.asset(AppIcons.cloud),
//                       const Gap(31),
//                       Text("${current.tempC}°", style: Theme.of(context).textTheme.displayLarge),
//                     ],
//                   ),
//                   const Gap(18.64),
//                   Text(current.conditionText, style: Theme.of(context).textTheme.headlineLarge),
//                   const Gap(4),
//                   Text("${location.name}, ${location.country}", style: Theme.of(context).textTheme.headlineMedium),
//                   const Gap(48.44),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: Row(
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Wind speed:", style: Theme.of(context).textTheme.headlineSmall),
//                             const Gap(5.57),
//                             Text("Humidity:", style: Theme.of(context).textTheme.headlineSmall),
//                             const Gap(5.57),
//                             Text("Cloud:", style: Theme.of(context).textTheme.headlineSmall),
//                           ],
//                         ),
//                         const Spacer(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("${current.windKph} km/h", style: Theme.of(context).textTheme.headlineSmall),
//                             const Gap(5.57),
//                             Text("${current.humidity}%", style: Theme.of(context).textTheme.headlineSmall),
//                             const Gap(5.57),
//                             Text("${current.cloud}%", style: Theme.of(context).textTheme.headlineSmall),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   const Gap(23.25),
//                 ],
//               ),
//             ),
//           );
//         } else if (state is WeatherError) {
//           // Error state
//           return Text('Error loading weather data.');
//         } else {
//           // Initial state
//           return Container(color: Colors.red,width: 30,height: 30,);
//         }
//       },
//     );
//   }
// }
//
