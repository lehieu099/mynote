# mynote
Xây dựng ứng dụng Note
(Đây là phần thực hành của nội dung chương 4 trong học phần *Phát triển ứng dụng di động đa nền tảng* đang được giảng dạy tại Khoa Công nghệ thông tin của Trường Đại học Mỏ - Địa chất)

## Bắt đầu
### main.dart
```
import 'package:flutter/material.dart';
import 'package:mynote/ui/views/note/note_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoteView(),
    );
  }
}
```
***
### file local_repository.dart
* Xây dựng một hàm tạo
  ```
  LocalRepository._internal();
  ```
* Lưu bộ nhớ cache để không phải tạo nhiều đối tượng
  ``` 
  static final _cache = <String, LocalRepository>{};
  ```
* Tạo một getter để lấy ra chính nó
  ```
  static LocalRepository get instance => _cache.putIfAbsent(
      'LocalPersistence', () => LocalRepository._internal()
    ```
***
### file reponsitory.dart
* Lớp trừu tượng để cho các model thừa kế và dùng trong việc
* thêm / sửa / xóa và lấy dữ liệu (Create, Read, Update, Delete - CRUD)

```
abstract class Repository<T> {
  LocalRepository localRepo;

  Future<dynamic> insert(T item);

  Future<dynamic> update(T item);

  Future<dynamic> delete(T item);

  Future<List<T>> items();
}
```
### Xem ghi chú
[note_view_item.dart](https://github.com/lehieu099/mynote/blob/master/lib/ui/views/note/widgets/note_view_item.dart)
### Chỉnh sửa ghi chú

thực hiện chức năng chỉnh sửa các ghi chú đã có sẵn, chi tiết:
[note_view_item_edit.dart](https://github.com/lehieu099/mynote/blob/master/lib/ui/views/note/widgets/note_view_item_edit.dart)

***

Để xem thêm về cấu trúc mô hình phát triển ứng dụng MVVM trong chương trình, click vào đây:
[model-view-viewmodel](https://github.com/lehieu099/mynote/tree/master/lib/ui/views/note)

***
