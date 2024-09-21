import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient{
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal(){
    socket = IO.io('http://abc.herokuapp.com',<String,dynamic>{  //Not Deployed hence false website name
      'transports':['websocket'],
      'autoConnect':false
    });
    socket!.connect();
  }
  static SocketClient get instance{
    _instance??=SocketClient._internal(); //checking if _instance is null
    return _instance!;
  }
}