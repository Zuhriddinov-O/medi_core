class Doctors {
  int? id;
  String? fullName;
  String? role;
  String? number;
  String? workingDays;
  String? workingHours;
  String? image;
  bool? gender;
  int? age;

  Doctors(
      {this.id,
        this.fullName,
        this.role,
        this.number,
        this.workingDays,
        this.workingHours,
        this.image,
        this.gender,
        this.age});

  Doctors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    role = json['role'];
    number = json['number'];
    workingDays = json['workingDays'];
    workingHours = json['workingHours'];
    image = json['image'];
    gender = json['gender'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['role'] = this.role;
    data['number'] = this.number;
    data['workingDays'] = this.workingDays;
    data['workingHours'] = this.workingHours;
    data['image'] = this.image;
    data['gender'] = this.gender;
    data['age'] = this.age;
    return data;
  }
}