class Mutations {
  static String createStudent = """
  mutation CreateStudent(
  \$email: String!
  \$name: String!
  \$password: String!
  \$id: Int!
  \$department: String!
  \$section: String!
) {
  createStudent(
    email: \$email
    name: \$name
    password: \$password
    id: \$id
    department: \$department
    section: \$section
  ) {
    email
  }
}
""";

}
