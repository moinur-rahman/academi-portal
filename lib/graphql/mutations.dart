class Mutations {
  static String createStudent = """
  mutation CreateStudent(
  \$email: String!
  \$name: String!
  \$password: String!
  \$ID: Int!
  \$department: String!
  \$section: String!
) {
  createStudent(
    email: \$email
    name: \$name
    password: \$password
    ID: \$ID
    department: \$department
    section: \$section
  ) {
    email
  }
}
""";
  static String createTeacher = """
  mutation CreateTeacher(
  \$email: String!
  \$name: String!
  \$password: String!
  \$department: String!
) {
  createTeacher(
    email: \$email
    name: \$name
    password: \$password 
    department: \$department
  ) {
    email
  }
}
""";
}
