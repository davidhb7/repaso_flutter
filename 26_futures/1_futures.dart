void main(){
  print("Inicio de programa");
  httpget("http://Rick&Morty").then((value) {
    print(value);
  });
  
}


Future<String> httpget(String url){
  String  fin ="";
  return Future.delayed(const Duration (seconds: 5), (){
    print("Respuesta de la peticion: "+ url);
    return "Fin de programa";
  });
  
}