class Mutations {
  static const createPost = """
mutation CreatePost (
  \$title: String!
  \$description: String!
  \$teacherId: String!
){
  createPost(
    title: \$title
    description: \$description
    teacherId: \$teacherId
  ) {
    title
    description
    teacher {
      id
    }
  }
}

""";
}
