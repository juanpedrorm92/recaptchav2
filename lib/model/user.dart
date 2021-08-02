class User{
  final int conteo;
  final String estado;
  User({required this.conteo, required this.estado});

  User.fromMap(Map<String, dynamic> res):conteo = res["conteo"], estado =  res["estado"];

  Map<String, Object?> toMap(){
    return {'conteo':conteo,'estado':estado};
  }
}