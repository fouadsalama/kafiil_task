import 'package:kafiil_test/Features/register/data/repo/register_repo.dart';
import 'package:kafiil_test/core/utils/api_service.dart';

// class RegisterRepoImpl implements RegisterRepo {
//   ApiService apiService;
//   RegisterRepoImpl(this.apiService);
//   @override
//   void sendRegisterData({
//     required String firstName,
//     required String lastName,
//     required String about,
//     required String socialMedia,
//     required String password,
//     required String confirmPass,
//     required String email,
//     required String birthDay,
//     required double tags,
//     required int salary,
//     bool? gender,
//   }) async {
//     try {
//       final Map<String, dynamic> headers = {
//         'Accept': 'application/json',
//         'Accept-Language': 'ar',
//         'Content-Type': 'multipart/form-data'
//       };
//       var response = await apiService.post(
//         endpoint: 'api/test/user/register',
//         headers: headers,
//         data: {
//           'first_name': firstName,
//           'last_name': lastName,
//           'about': about,
//           'tags': tags,
//           'favorite_social_media': socialMedia,
//           'salary': salary,
//           'password': password,
//           'email': email,
//           'birth_date': birthDay,
//           'gender': gender,
//           'password_confirmation': confirmPass,
//         },
//       );
//       return response;
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }
