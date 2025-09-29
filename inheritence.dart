void main(){
//Teacher teacher = Teacher(age: 10, course: "Mathematics", name: "James", gender: "male");
//teacher.introduction();
//teacher.teach();
var teacher2 = GuidanceAndCounselTeacher(age: 10, 
course: "Guidance & counselling", 
name: "Veronica", 
gender: "Female");


teacher2.introduction();
teacher2.teach();
teacher2.motivate();

}


class GuidanceAndCounselTeacher extends Teacher{
    GuidanceAndCounselTeacher({
        required super.age,
        required super.course,
        required super.name,
        required super.gender,
    });

    

    void motivate(){
    print("As a Guidance and counsel Tecaher, I am here to motivate you. Keep going !!");
}
}

class Teacher{
    String name;
    int age;
    String course;
    String gender;

    Teacher({ 
        this.name = "Unnamed",
        required this.age,
        required this.course,
        this.gender = "Unspecified",
    });

void teach(){
print("I teach $course");

}
void introduction(){
    print("My name is $name\nMy age is $age\nI am a $gender");
}
}