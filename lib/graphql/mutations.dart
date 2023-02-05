class Mutations {
  static String createUser = """
  mutation CreateUser(
  \$email: String!
  \$name: String!
  \$password: String!
  \$ID: Int!
  \$department: String!
  \$section: String!
) {
  createUser(
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
}
