// import 'dart:developer';
//
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
//
// import 'cart_item_model.dart';
//
// class CartDbHelper {
//   static Database? _database;
//   static final CartDbHelper instance = CartDbHelper._internal();
//   CartDbHelper._internal();
//
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     return await _initDatabase();
//   }
//
//   Future<Database> _initDatabase() async {
//     final dir = await getApplicationDocumentsDirectory();
//     final path = join(dir.path, 'cart.db');
//
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute('''
//         CREATE TABLE cart(
//           id INTEGER PRIMARY KEY,
//           name TEXT,
//           brand TEXT,
//           image TEXT,
//           price REAL,
//           quantity INTEGER
//         )
//       ''');
//       },
//     );
//   }
//
//   Future<CartItemModel?> getItem(int id) async {
//     final db = await database;
//     final result = await db.query(
//       'cart',
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//     if (result.isNotEmpty) {
//       return CartItemModel.fromMap(result.first);
//     } else {
//       return null;
//     }
//   }
//
//   Future<int> insertItem(CartItemModel item) async {
//     final db = await database;
//     return await db.insert(
//       'cart',
//       item.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }
//
//   Future<List<CartItemModel>> getAllItems() async {
//     final db = await database;
//     final result = await db.query('cart');
//     return result
//         .map(
//           (map) => CartItemModel.fromMap(map),
//         )
//         .toList();
//   }
//
//   Future<int> updateItemQuantity({
//     required int id,
//     required int newQty,
//   }) async {
//     log(newQty.toString(), name: 'newQty');
//     final db = await database;
//     return await db.update(
//       'cart',
//       {
//         'quantity': newQty,
//       },
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }
//
//   Future<void> deleteItem(int id) async {
//     final db = await database;
//     await db.delete('cart', where: 'id = ?', whereArgs: [id]);
//   }
//
//   Future<void> clearCart() async {
//     final db = await database;
//     await db.delete('cart');
//   }
//
//   Future<double> getTotal() async {
//     final db = await database;
//     final result = await db.rawQuery(
//       'SELECT SUM(price * quantity) as total FROM cart',
//     );
//     return result.first['total'] == null
//         ? 0.0
//         : (result.first['total'] as double);
//   }
// }
