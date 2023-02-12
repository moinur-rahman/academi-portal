class Mutations {
  static String createStudent = """
  mutation CreateStudent(
  \$email: String!
  \$name: String!
  \$password: String!
  \$studentId: Int!
  \$department: String!
  \$section: String!
  \$phone: String!
) {
  createStudent(
    email: \$email
    name: \$name
    password: \$password
    studentId: \$studentId
    department: \$department
    section: \$section
    phone: \$phone
  ) {
    email
  }
}
""";

  static String studentLogin = """
  mutation StudentLogin(
   \$email: String!
  \$password: String!
  ){
  studentLogin(
    email:\$email,
    password:\$password,
    ){
    email
    password
  }
  }
""";
}
