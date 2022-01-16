import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class DatabaseHelper {
  static DatabaseHelper? databaseHelper;
  static Database? database;

  DatabaseHelper.internal();

  /// CONSTRUCTOR.
  factory DatabaseHelper() {
    return databaseHelper ?? DatabaseHelper.internal();
  }

  /// 1. ON CREATE METODI OCHILADI. PARAMETRIGA DATABASE VA VERSION OLADI.
  /// UNING ICHIDA QUERY YOZILADI
  _onCreateTable(Database db, int version) async {
    String query =
        "CREATE TABLE students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, lastname TEXT, isActive TEXT)";
    await db.execute(query);
  }

  /// 2. INIT DATABASE METODI YOZILADI. UNDA PATH TANITILIB QIYMAT BERILADI.
  /// openDatabase() FUNKSIYASI ORQALI MA'LUMOTLAR BAZASI OCHILADI
  _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDb = path.join(directory.path, "students.db");

    var openDb =
    await openDatabase(pathDb, version: 1, onCreate: _onCreateTable);
    return openDb;
  }

  /// 3. MA'LUMOTLAR BAZASINI OLISH. AGAR MA''LUMOTLAR BAZASI AVVAL OCHILGAN
  /// BO'LSA, database RETUTN QILINADI, AKS HOLDA _initDatabase() RETURN QILINADI.
  Future<Database> _getDatabase() async {
    return database ?? await _initDatabase();
  }

  // Future<int> addStudent(Student student) async {
  //   Database db = await _getDatabase();
  //   var result = db.insert("students", student.toMap());
  //   return result;
  // }

  Future<List<Map<String, dynamic>>> getAllStudents() async {
    Database db = await _getDatabase();
    var result = db.query('students');
    db.close();

    return result;
  }

  // Future updateStudent(Student student) async {
  //   Database db = await _getDatabase();
  //   db.update(
  //     'students',
  //     student.toMap(),
  //     where: 'id = ?',
  //     whereArgs: [student.id],
  //   );
  // }

  Future deleteStudent(int id) async {
    Database db = await _getDatabase();
    db.delete('students', where: 'id = ?', whereArgs: [id]);
    db.close();
  }
}