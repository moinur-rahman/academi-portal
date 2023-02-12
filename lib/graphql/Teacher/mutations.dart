class Mutations {
  static String createTeacher = """
  mutation CreateTeacher(
  \$email: String!
  \$name: String!
  \$password: String!
  \$department: String!
  \$phone: String!
) {
  createTeacher(
    email: \$email
    name: \$name
    password: \$password 
    department: \$department
    phone: \$phone
  ) {
    email
  }
}
""";

static String teacherLogin = """
  mutation TeacherLogin(
   \$email: String!
  \$password: String!
  ){
  teacherLogin(
    email:\$email,
    password:\$password,
    ){
    email
    password
  }
  }
""";
}
