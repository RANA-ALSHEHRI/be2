import 'dart:io';

import 'package:be/AllScreens/Request/RequestDetails.dart';
import 'package:be/DataH/firebaseController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RequestController extends ChangeNotifier {
  final firestoreInstance = FirebaseFirestore.instance;

  bool isLoading = false;
  int durationCount = 1;
  String startDate;
  String startTime;
  String selectedGender = 'ذكر';
  DocumentSnapshot requestDocument;
  Stream<QuerySnapshot> mateMainRequests;

  bool get getIsLoading => isLoading;
  int get getDurationCount => durationCount;
  String get getSelectedGender => selectedGender;
  String get getStartDate => startDate;
  String get getStartTime => startTime;
  DocumentSnapshot get getRequestDocument => requestDocument;
  Stream<QuerySnapshot> get getMateMainRequests => mateMainRequests;

  void increment() {
    durationCount = durationCount <= 10 ? durationCount += 1 : 10;
    notifyListeners();
  }

  void decrement() {
    durationCount = durationCount == 1 ? 1 : durationCount - 1;
    notifyListeners();
  }

  Map<String, dynamic> requestMap(
      String code,
      String requestOwner,
      String mateName,
      String direction,
      String selectedGender,
      String startTime,
      String startDate,
      String status,
      String duration,
      String selectedImage,
      String requestOwnerPhone,
      String mateID,
      String mateImage,
      String matePhone,
      String mateBirthDate,
      String requestOwnerID,
      ) =>
      {
        "code": code,
        "requestOwner": requestOwner,
        "mateName": mateName,
        "direction": direction,
        "selectedGender": selectedGender,
        "startTime": startTime,
        "startDate": startDate,
        "requestStatus": status,
        "duration": duration,
        "selectedImage": selectedImage,
        "requestOwnerPhone": requestOwnerPhone,
        "mateID": mateID,
        "mateImage": mateImage,
        "matePhone": matePhone,
        "mateBirthDate": mateBirthDate,
        "requestOwnerID": requestOwnerID
      };

  requestNewMate({
    BuildContext context,
    String code,
    String requestOwner,
    String mateName,
    String direction,
    String selectedGender,
    String startTime,
    String startDate,
    String status,
    String duration,
    String requestOwnerPhone,
    String mateID,
    String oldManID,
    String mateImage,
    String selectedImage,
    String matePhone,
    String mateBirthDate,
  }) {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);

    firestoreInstance
        .collection("Requests")
        .add(requestMap(
        code,
        requestOwner,
        mateName,
        direction,
        selectedGender,
        startTime,
        startDate,
        status,
        duration,
        requestOwnerPhone,
        mateID,
        mateImage,
        selectedImage,
        matePhone,
        mateBirthDate,
        fbProvider.userModel.id))
        .then((value) {
      print(value.id);

      Navigator.pop(context);
      Navigator.pop(context);
    });
  }

  Stream<QuerySnapshot> displayRequests(
      BuildContext context, String requestStatus) {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);

    mateMainRequests = firestoreInstance
        .collection('Requests')
        .where('selectedGender', isEqualTo: fbProvider.userModel.gender)
        .where('requestStatus', isEqualTo: requestStatus)
        .snapshots();

    return mateMainRequests;
  }

  Stream<QuerySnapshot> loadOldManOffers(
      BuildContext context, String requestStatus) {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);

    var result = firestoreInstance
        .collection('UserRequests')
        .where('requestStatus', isEqualTo: requestStatus)
        .where('mateID', isEqualTo: fbProvider.userModel.id)
        .snapshots();

    return result;
  }

// في الأنتظار, موافقة المرافق, موافقة المسن, تم الألغاء, مكتمل

  /// USER-REQUESTS Table
  addUserRequest({
    BuildContext context,
    String code,
    String requestOwner,
    String mateName,
    String direction,
    String selectedGender,
    String startTime,
    String startDate,
    String status,
    String duration,
    String requestOwnerPhone,
    String mateID,
    String mateImage,
    String selectedImage,
    String matePhone,
    String mateBirthDate,
  }) async {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);

    await firestoreInstance
        .collection("UserRequests")
        .add(requestMap(
      code,
      requestOwner,
      mateName,
      direction,
      selectedGender,
      startTime,
      startDate,
      status,
      duration,
      requestOwnerPhone,
      mateID,
      mateImage,
      selectedImage,
      matePhone,
      mateBirthDate,
      fbProvider.userModel.id,
    ))
        .then((value) {});
  }

  updateRequestStatus({
    BuildContext context,
    String requestStatus,
    String documentID,
    String mateID,
    String code,
    String requestOwner,
    String mateName,
    String direction,
    String selectedGender,
    String startTime,
    String startDate,
    String duration,
    String requestOwnerPhone,
    String mateImage,
    File imageFile,
    String matePhone,
    String mateBirthDate,
  }) {
    firestoreInstance
        .collection("Requests")
        .doc(documentID)
        .update({"requestStatus": requestStatus}).then((_) {
      // here he upload the photo
      String selectedImage;
      FirebaseStorage storage = FirebaseStorage.instance;//save photo in firebase
      Reference ref = storage.ref().child("image" + DateTime.now().toString()); // move the request to other collection in firebase
      UploadTask uploadTask = ref.putFile(imageFile);

      uploadTask.then((res) {
        res.ref.getDownloadURL().then((value) {
          selectedImage = value;
          notifyListeners();

          addUserRequest(
            context: context,
            code: code,
            requestOwner: requestOwner,
            direction: direction,
            selectedGender: selectedGender,
            startTime: startTime,
            startDate: startDate,
            status: requestStatus,
            selectedImage: selectedImage,
            duration: duration,
            mateID: mateID,
            mateName: mateName,
            mateImage: mateImage,
            matePhone: matePhone,
            mateBirthDate: mateBirthDate,
          );
        });
      });

      print("--------------- success!");

      Navigator.pop(context);
      Navigator.pop(context);
    });
  }

  Stream<QuerySnapshot> fetchMateCurrentRequests(BuildContext context) {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);
    mateMainRequests = firestoreInstance
        .collection('UserRequests')
        .where('requestStatus', isNotEqualTo: 'تم الألغاء')
        .where('selectedGender', isEqualTo: fbProvider.userModel.gender)
        .where('mateID', isEqualTo: fbProvider.userModel.id)
        .snapshots();

    return mateMainRequests;
  }

  Stream<QuerySnapshot> fetchMatePreviousRequests(BuildContext context) {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);

    mateMainRequests = firestoreInstance
        .collection('UserRequests')
        .where('mateID', isEqualTo: fbProvider.userModel.id)
        .where('requestStatus', whereIn: ['مكتمل', 'تم الألغاء']).snapshots();

    return mateMainRequests;
  }

  Stream<QuerySnapshot> fetchOldManCurrentRequests(BuildContext context) {
    final fbProvider = Provider.of<FirebaseController>(context, listen: false);
    mateMainRequests = firestoreInstance
        .collection('UserRequests')
        .where('requestOwnerID', isEqualTo: fbProvider.userModel.id)
        .where('requestStatus', whereIn: [
      'موافقة الأدمن',
      'موافقة المسن',
      'موافقة المرافق',
      'في الأنتظار'
    ]).snapshots();

    return mateMainRequests;
  }

  changeRequestStatus(
      {BuildContext context,
        String collection,
        String status,
        String docID}) async {
    var result = await firestoreInstance
        .collection(collection)
        .doc(docID)
        .update({"requestStatus": status});
    return result;
  }

  getCurrentRequestByID(BuildContext context, String id) {
    firestoreInstance.collection('Requests').doc(id).get().then((value) {
      requestDocument = value;
      notifyListeners();

      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RequestDetails(value)));
    });
  }

////////////////////////////////////////////
  static void cancelRequestWindow(
      {BuildContext context,
        Function onCancelPressed,
        String title,
        double height,
        List<Widget> children}) {
    final size = MediaQuery.of(context).size;

    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: height ?? size.height * 0.35,
          color: Colors.white,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title,
                      // 'تأكيد إلغاء خدمة المرافقة؟',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
