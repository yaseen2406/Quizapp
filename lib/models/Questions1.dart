class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "Flutter is an open-source UI software development kit created by Google",
    "options": ['True', 'False'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "When google release Flutter in 2020.",
    "options": ['True', 'False'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "HTML is a Programming Language?",
    "options": ['True', 'False'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Cout command is used to output data to the screen?",
    "options": ['True', 'False'],
    "answer_index": 0,
  },
];
