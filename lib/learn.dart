
void main() {
  /**
   * 1.1 变量
   */
  var a = "hello world";
  // a = 1;
  dynamic b = "123";
  print(b.length);
  Object c = "456";
  // print(c.length);

  var num = 10;
  final d = num * 2;
  //const必须声明为常量
  const e = 2;

  /**
   * 1.2 函数
   */
  //函数返回值没有类型推断
  bool isNull(var param) {
    return param == null;
  }
  print(isNull);

  //函数作为变量
  var say = (str) {
    print(str);
  };
  say("Hi");

  //函数作为参数传递
  void execute(var callback) {
    callback();
  }
  execute(() => print("xxx"));

  //可选位置参数
  String talk(String from, String msg, [String device]) {
    var result = "$from talk $msg";
    if (device != null) {
      result = "$result with a $device";
    }
    return result;
  }
  print(talk("Bob", "Howdy"));
  print(talk("Bob", "Howdy", "smoke signal"));

  //可选命名参数
  void enableFlags(String str, String str2, {bool bold, bool hidden}) {
    print("str is $str, str2 is $str2, bold is $bold, hidden is $hidden");
  }
  enableFlags("123", "456", hidden: false, bold: true);

  //不能同时使用可选位置参数和可选命名参数

  /**
   * 异步
   */
  //错误处理既可以catchError也可以onError
  Future.delayed(new Duration(seconds: 2), (){
    // return "hi world";
    throw AssertionError("Error");
  }).then((value) => print(value)
  ).catchError((e) => print(e));

  Future
      .delayed(new Duration(seconds: 2), () => throw AssertionError("Error"))
      .then((value) => print(value), onError: (e) => print(e));

  Future
      .delayed(new Duration(seconds: 2), () => throw AssertionError("Error"))
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => print("complete"));

  Future.wait([
    Future.delayed(new Duration(seconds: 2), (){
    return "hello";
  }), Future.delayed(new Duration(seconds: 4), (){
    return "world";
  })]).then((value) => print(value[0] + value[1]))
      .catchError((e) => print(e));

  Future<String> login(String userName, String pwd) {
    //用户登录;
  }

  Future<String> getUserInfo(String id) {
    //获取用户信息
  }

  Future saveUserInfo(String userInfo) {
    //保存用户信息
  }

  /*login("alice", "123456").then((id){
    return getUserInfo(id);
  }).then((userInfo){
    return saveUserInfo(userInfo);
  }).then((value) => print("complete")).catchError((e) => print(e));*/

  //async表示函数是异步的 await表示等待该异步任务完成后继续执行
  func() async {
    String id = await login("alice", "123456");
    String userInfo = await getUserInfo(id);
    await saveUserInfo(userInfo);
  }

  Stream.fromFutures([
    Future.delayed(new Duration(seconds: 1), (){
      return "hello1";
    }),
    Future.delayed(new Duration(seconds: 2), () => throw AssertionError("Error")),
    Future.delayed(new Duration(seconds: 3), (){
      return "hello3";
    })
  ]).listen((event) => print(event), onError: (e) => print(e)).onDone(() { });
}