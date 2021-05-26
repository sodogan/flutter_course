class Constants {
  Constants._(); //Dont want to be constructed
  static const List<Map<String, Object>> _questionList = [
    {
      "question": "What's your favourite color?",
      "answers": [
        {
          "answer": "Red",
          "score": 7,
        },
        {
          "answer": "Green",
          "score": 10,
        },
        {
          "answer": "Blue",
          "score": 6,
        },
      ],
    },
    {
      "question": "What's your favourite animal?",
      "answers": [
        {
          "answer": "Tiger",
          "score": 7,
        },
        {
          "answer": "Elephant",
          "score": 10,
        },
        {
          "answer": "Rabbit",
          "score": 6,
        },
      ],
    },
    {
      "question": "What is your favourite season ?",
      "answers": [
        {
          "answer": "Spring",
          "score": 7,
        },
        {
          "answer": "Winter",
          "score": 10,
        },
        {
          "answer": "Summer",
          "score": 6,
        },
      ]
    }
  ];

  static List<Map<String, dynamic>> get questionList => _questionList;
}
