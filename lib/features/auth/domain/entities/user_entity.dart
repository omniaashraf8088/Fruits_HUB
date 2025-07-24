

class UserEntity {

  String emailAddress;
  String name;
  String password;
  UserEntity({required this.emailAddress,
  required this.password,
  required this.name,
  
  });

    factory UserEntity.fromJson(Map<String, dynamic> json){
      return UserEntity(
        emailAddress: json['emailAddress'],
        password: json['password'],
        name: json['name']
      );
    }
  

  
}