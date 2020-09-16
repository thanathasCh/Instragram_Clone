import 'package:flutter_app/data/model/post.dart';
import 'package:flutter_app/data/model/story.dart';

class MockData {
  static var stories = [
    Story("Jeffffffffffffffffffffffffffffffffffffffffffff", "https://images.pexels.com/photos/3556533/pexels-photo-3556533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Story("Anaaaaa", "https://images.pexels.com/photos/3214734/pexels-photo-3214734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Story("Ron", "https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Story("Harry", "https://images.pexels.com/photos/1181695/pexels-photo-1181695.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Story("Alex", "https://images.pexels.com/photos/1181391/pexels-photo-1181391.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Story("Allison", "https://images.pexels.com/photos/1181497/pexels-photo-1181497.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Story("Lyn", "https://images.pexels.com/photos/1181521/pexels-photo-1181521.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
  ];

  static var posts = [
    Post("Jeffffffffffffffffffffffffffffffffffffffffffff", "Nice #FreeWill #Relax", "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/3556533/pexels-photo-3556533.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Post("Lyn", "Nice #FreeWill #Relax", "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1181521/pexels-photo-1181521.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Post("Allison", "Nice #FreeWill #Relax", "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1181497/pexels-photo-1181497.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Post("Alex", "Nice #FreeWill #Relax", "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1181391/pexels-photo-1181391.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
    Post("Harry", "Nice #FreeWill #Relax", "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1181695/pexels-photo-1181695.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
  ];
}