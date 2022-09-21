import 'package:basureward/packages.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key, this.schedule}) : super(key: key);

  final Schedule? schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 350,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 7, 61, 105),
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 250,
          height: 350,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            children: [
              barangay(),
              scheduleWidget(),
              const SizedBox(height: 5),
              headPerson(),
              const Divider(
                color: Color.fromARGB(255, 7, 61, 105),
                thickness: 3,
                indent: 40,
                endIndent: 40,
              ),
              scheduleDetials('PAGTAPON NG BASURA', schedule?.schedule ?? ''),
              scheduleDetials(
                  'PICK UP TIME(1st Trip)', schedule?.firstTrip ?? ''),
              scheduleDetials(
                  'PICK UP TIME(2nd Trip)', schedule?.schedule ?? ''),
              concern(),
              contact(),
            ],
          ),
        ),
      ),
    );
  }

  Widget barangay() {
    return SizedBox(
      width: 250,
      height: 80,
      child: Column(
        children: [
          const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              backgroundImage: AssetImage('assets/logo/gusu.png')),
          Text(
            schedule?.barangay?.toUpperCase() ?? '',
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget scheduleWidget() {
    return Container(
      width: 250,
      height: 40,
      color: const Color.fromARGB(255, 7, 61, 105),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            schedule?.header?.toUpperCase() ?? '',
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget headPerson() {
    return Text(
      schedule?.headPerson?.toUpperCase() ?? '',
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
    );
  }

  Widget scheduleDetials(String header, String scheduleData) {
    return SizedBox(
        width: Get.width,
        height: 40,
        child: Column(
          children: [
            Text(header,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
            Text(scheduleData,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
          ],
        ));
  }

  Widget concern() {
    return Container(
      width: Get.width,
      height: 30,
      color: const Color.fromARGB(255, 7, 61, 105),
      child: Center(
        child: Text(
          "For concern and complainst look for\n${schedule?.assignPerson?.toUpperCase() ?? ''}",
          style: const TextStyle(
              color: Colors.white, fontSize: 11, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget contact() {
    return Text(
      'CONTACT NO. ${schedule?.contact ?? ''}',
      style: const TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
    );
  }
}
