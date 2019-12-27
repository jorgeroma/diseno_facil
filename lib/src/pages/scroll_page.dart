import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView(

        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
      
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }

  Widget _textos(){
    final estilo = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: estilo,),
          Text('Miercoles', style: estilo,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 70.0,color: Colors.white,)
        ],
      ),
    );
  }


  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
          child: Container(padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),child: Text('Bienvenido', style: TextStyle(fontSize: 25.0, color: Colors.white),)),
          color: Colors.blue,
          elevation: 6.0,
          onPressed: (){},
        ),
      )
    );
  }
}