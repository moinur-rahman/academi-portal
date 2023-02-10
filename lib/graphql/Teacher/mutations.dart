class Mutations {
 
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
