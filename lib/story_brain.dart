import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyData = [
    Story(
        storyTitle:
            'A tu coche se le ha reventado una rueda en una carretera sinuosa en medio de la nada y sin cobertura de teléfono móvil. Decides hacer autostop. Una camioneta oxidada se detiene junto a ti. Un hombre con un sombrero de ala ancha y ojos sin alma te abre la puerta del pasajero y te pregunta: "¿Necesitas que te lleven, chico?".',
        choice1: 'Voy a entrar. Gracias por la ayuda.',
        choice2: 'Mejor pregúntale si es un asesino primero.'),
    Story(
        storyTitle: 'Asiente lentamente, sin inmutarse por la pregunta.',
        choice1: 'Al menos es honesto. Se subirá.',
        choice2: 'Espera, sé cómo cambiar un neumático.'),
    Story(
        storyTitle:
            'Al empezar a conducir, el desconocido empieza a hablar de su relación con su madre. Cada vez está más enfadado. Le pide que abra la guantera. Dentro encuentra un cuchillo ensangrentado, dos dedos cortados y una cinta de casete de Elton John. Coge la guantera.',
        choice1: '¡Me encanta Elton John! Pásale la cinta de casete.',
        choice2: '¡Es él o yo! Toma el cuchillo y apuñálalo.'),
    Story(
        storyTitle:
            '¿Qué? Qué excusa para no decir nada. ¿Sabías que los accidentes de tráfico son la segunda causa de muerte accidental en la mayoría de los grupos de edad de los adultos?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Mientras atraviesas el quitamiedos y te diriges hacia las rocas irregulares que hay debajo, reflexionas sobre la dudosa conveniencia de apuñalar a alguien mientras conduce el coche en el que estás.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Te relacionas con el asesino mientras cantas versos de "Can you feel the love tonight". Te deja en el siguiente pueblo. Antes de irte te pregunta si conoces algún buen lugar para tirar los cuerpos. Tú respondes: "Prueba en el muelle".',
        choice1: 'Restart',
        choice2: ''),
  ];

  String getStory(){
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1(){
    return _storyData[_storyNumber].choice1;
  }
  String getChoice2(){
    return _storyData[_storyNumber].choice2;
  }
  void nextStory(int choiceNumber){
    if(_storyNumber == 0 && choiceNumber==1){
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2){
      _storyNumber = 1;
    } else if(_storyNumber == 2 && choiceNumber==1){
      _storyNumber = 5; 
    } else if(_storyNumber == 2 && choiceNumber==2){
      _storyNumber = 4; 
    } else if(_storyNumber == 1 && choiceNumber==1){
      _storyNumber = 2; 
    } else if(_storyNumber == 1 && choiceNumber==2){
      _storyNumber = 3; 
    } else if ((_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) && choiceNumber == 1){
      _storyNumber = 0;
    }
    getStory();
    getChoice1();
    getChoice2();
  }
  bool buttonShouldBeVisible(){
    if(_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5){
      return false;
    } else {
      return true;
    }
  }
}
