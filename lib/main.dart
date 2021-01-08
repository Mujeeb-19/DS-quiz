import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Q 1 - What is the worst case time complexity of linear search algorithm?',
      'answers': [
        {'text': ' A - Ο(1)', 'score': 0},
        {'text': ' B - Ο(n) ', 'score': 0},
        {'text': 'C - Ο(log n)', 'score': 0},
        {'text': ' D - Ο(n2)', 'score': 1},
      
      ],
    },
    {
      'questionText':
          'Q 2 - What data structure is used for depth first traversal of a graph?',
      'answers': [
        {'text': 'A - queue ', 'score': 0},
        {'text': 'B - stack', 'score': 1},
        {'text': ' C - list ', 'score': 0},
        {'text': 'D - none of the above', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q 3 - Which of the following asymptotic notation is the worst among all?',
      'answers': [
        {'text': 'A - Ο(n+9378)', 'score': 0},
        {'text': ' B - Ο(n3) ', 'score': 1},
        {'text': 'C - nΟ(1) ', 'score': 0},
        {'text': 'D - 2Ο(n)', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q 4 -  The minimum number of edges required to create a cyclid graph of n vertices is',
      'answers': [
        {'text': 'A - n', 'score': 1},
        {'text': ' B - n-1 ', 'score': 0},
        {'text': 'C - n+1 ', 'score': 0},
        {'text': 'D - 2n', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q 5 - Graph traversal is different from a tree traversal, because',
      'answers': [
        {'text': 'A - trees are not connected. ', 'score': 0},
        {'text': 'B - graphs may have loops. ', 'score': 0},
        {'text': ' C - trees have root. ', 'score': 1},
        {'text': 'D - None is true as tree is a subset of graph.', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q 6 - In context with time-complexity, find the odd out −',
      'answers': [
        {'text': 'A - Deletion from Linked List', 'score': 0},
        {'text': ' . B - Searching in Hash Table ', 'score': 0},
        {'text': ' C - Adding edge in Adjacency Matrix ', 'score': 0},
        {'text': 'D - Heapify a Binary Heap', 'score': 1},
      ],
    },
    {
      'questionText':
          'Q 7 - Which of the following is not possible with an array in C programming langauge −',
      'answers': [
        {'text': 'A - Declaration', 'score': 0},
        {'text': ' B - Definition ', 'score': 0},
        {'text': ' C - Dynamic Allocation  ', 'score': 1},
        {'text': 'D - Array of strings', 'score': 0},
      ],
    },
    {
      'questionText': 'Q 8 - All possible spanning trees of graph G',
      'answers': [
        {'text': 'A - have same number of edges and vertices. ', 'score': 1},
        {
          'text': ' B - have same number of edges and but not vertices.  ',
          'score': 0
        },
        {
          'text': 'C - have same number of vertices but not edges. ',
          'score': 0
        },
        {'text': ' D - depends upon algorithm being used.', 'score': 0},
      ],
    },
    {
      'questionText': 'Q 9 - Re-balancing of AVL tree costs',
      'answers': [
        {'text': 'A - Ο(1) ', 'score': 0},
        {'text': ' B - Ο(log n) ', 'score': 1},
        {'text': 'C - Ο(n)', 'score': 0},
        {'text': ' D - Ο(n2)', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q 10 - Which of the following algorithm does not divide the list −',
      'answers': [
        {'text': 'A - linear search', 'score': 1},
        {'text': '  B - binary search', 'score': 0},
        {'text': ' C - merge sort  ', 'score': 0},
        {'text': 'D - quick sort', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questionss = [
    'Among the options, only Merge sort divides the list in sub-list, sorts and then merges them together',
    'Expression notations are not reverse (or so) of each other, rather operators used in the expression have different arrangements.',
    'Ο(n+9378) is n dependent Ο(n3) is cubic nΟ(1) is polynomial 2Ο(n) is exponential',
    'In case where binary search tree is left or right intended, the worst case can be Ο(n)',
    'Only Merge sort requires extra space.',
    'There will be 3 swaps in first iteration and 1 swap in second iteration.',
    'Array in C are static and cannot be shrinked or expanded in run-time.',
    'Heap maintains itself to meet all the requirements of complete binary tree.',
    'At maximum, BST may need to search all n values in the tree in order to access an element, hence, Ο(n).',
    'In this analysis, actual statistics like running time and space required, are collected.'
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DS Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
               hintss: _questionss,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
