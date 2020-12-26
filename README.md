# mynote
Xây dựng ứng dụng Note
(Đây là phần thực hành của nội dung chương 4 trong học phần *Phát triển ứng dụng di động đa nền tảng* đang được giảng dạy tại Khoa Công nghệ thông tin của Trường Đại học Mỏ - Địa chất)

## Bắt đầu

### file local_repository.dart
* Xây dựng một hàm tạo
  ```
  LocalRepository._internal();
  ```
* Lưu bộ nhớ cache để không phải tạo nhiều đối tượng
  ``` static final _cache = <String, LocalRepository>{};
  ```
* Tạo một getter để lấy ra chính nó
  ```
  static LocalRepository get instance => _cache.putIfAbsent(
      'LocalPersistence', () => LocalRepository._internal()
    ```



