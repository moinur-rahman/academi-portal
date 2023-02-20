class Queries {
  static const getTeacherById = """
query getTeacherById(\$id: String!) {
  getTeacherById (id: \$id) {
    id
    email
    phone
    department
  }
}

""";
}


//   static String createTeacher = """
//   mutation CreateTeacher(
//   \$email: String!
//   \$name: String!
//   \$password: String!
//   \$department: String!
//   \$phone: String!
// ) {
//   createTeacher(
//     email: \$email
//     name: \$name
//     password: \$password 
//     department: \$department
//     phone: \$phone
//   ) {
//     email
//   }
// }
// """;