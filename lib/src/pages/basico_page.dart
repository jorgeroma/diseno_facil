import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 16.0, color: Colors.grey);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            SizedBox(height: 10.0,),
            _crearAcciones(),
            SizedBox(height: 10.0,),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),      
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://wallpaperaccess.com/full/370404.jpg'),
        fit: BoxFit.cover,
        height: 200.0,
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Foto de un paisaje', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Un paisaje muy bonito', style: estiloSubTitulo,)
                ],
              ),
            ),

            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle(fontSize: 20.0),),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );

  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, size: 40.0, color: Colors.blue,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),),
      ],
    );
  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Duis duis et aute quis ut. Do velit est cupidatat amet. Dolore dolor aute cupidatat exercitation magna deserunt eiusmod in voluptate. Fugiat reprehenderit nisi non excepteur ea. Cillum non quis pariatur et ad ipsum. Quis laboris elit in id officia. Adipisicing tempor tempor proident laborum sint sit tempor proident Lorem laboris cillum occaecat exercitation deserunt.',
          textAlign: TextAlign.justify,
        )
      ),
    );
  }


}