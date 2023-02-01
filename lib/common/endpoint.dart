import '../screens/teacher/legal.dart';

class EndPoint {
  static const hostname =
      "http://ec2-15-206-210-177.ap-south-1.compute.amazonaws.com:6001/";
  static const baseurl = hostname + "api/v1/";
  static const login = baseurl + "login";
  static const verifyOtp = baseurl + "verify";
  static const createStudent = baseurl + "students/";
  static const changeTopic = baseurl + "stopics/";
  static const rating = baseurl + "ratings";
  static const aboutus = baseurl + "aboutus";
  static const addquery = baseurl + "studentqueries";
  static const getstudent = baseurl + "student/";
  static const createteacher = baseurl + "teachers";
  static const subscriptionpack = baseurl + "subscriptions";
  static const updatetopic = baseurl + "topics/";
  static const getteacher = baseurl + "teacher/";
  static const addquerybyteacher = baseurl + "teachers/";
  static const sociallogin = baseurl + "socialLogin";
  static const createorderpayment = createteacher;
  static const legal = baseurl + "legalinformations";
}
