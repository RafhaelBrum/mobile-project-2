import 'package:flutter/material.dart';

import '../models/usuario_model.dart';

class Usuarios extends StatefulWidget {
  @override
  State<Usuarios> createState() {
    return UsuariosState();
  }
}

class UsuariosState extends State<Usuarios> {
  /// Lista de objetos da classe Usuario
  List<Usuario> _lista = [];

  @override
  void initState() {
    super.initState();
    _lista.add(Usuario(
        nome: "Lucas",
        email: "lucas@gmail.com",
        urlFoto:
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"));
    _lista.add(Usuario(
        nome: "Pedro",
        email: "pedro@gmail.com",
        urlFoto:
            "https://assets.jus.com.br/system/profile_image/59119/c42497976a1b83756db23c4f035bcab2.jpeg"));
    _lista.add(Usuario(
        nome: "Fernando",
        urlFoto:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwJzyQcBu_7EH0wSSW14L4Edxsj3X8AJKcy3UBpQE33iMrZ8Z3SNXmPpEZyqsl898vYwI&usqp=CAU",
        email: "fernando@gmail.com"));
    _lista.add(Usuario(
        nome: "Celia",
        urlFoto:
            "https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.webp?b=1&s=170667a&w=0&k=20&c=ahypUC_KTc95VOsBkzLFZiCQ0VJwewfrSV43BOrLETM=",
        email: "celia@gmail.com"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Usuários"),
            backgroundColor: Color.fromARGB(158, 57, 180, 41)),
        body: ListView.builder(
            itemCount: _lista.length, // Tamanho da lista
            // context: contexto da aplicação (tela atual)
            // index: índice de cada item, iterado de 0 até n-1 (n = tamanho da lista)
            itemBuilder: (context, index) {
              return ListTile(
                  leading: ClipOval(
                    child: Image.network(_lista[index].urlFoto),
                  ),
                  title: Text(_lista[index].nome),
                  subtitle: Text(_lista[index].email));
            }));
  }
}
