#命名規則
* start_*.launch : 単一ノードやノード群を起動するためのファイル。
* show_*.launch : URDFを単にrviz上で表示するためのファイル。
* demo_*.launch : 単機能の動作確認のためのファイル。ノードの起動に加えて、可視化や操作などの、動作を確認できるようにするための補助的なノードの起動やパラメタの定義を含む

demo系はstart系をインクルードすること

#起動必須#
### start_pantilt_dxl.launch
パンチルト機構のためのdynamixelの起動に必要なノードをすべて起動する。

### start_hokuyo.launch
HokuyoのLRFを起動するために必要なノードをすべて起動する

#可視化
### show_youbot.launch
UDのURDF (urdf/ud.urdf.xacro) をrvizで表示する。

```
roslaunch ubiquitous_display show_youbot.launch
```

### show_pantilt.launch
パンチルト機構をrvizで表示する。

#デモ
### start_youbot_rosgridge_demo.launch
rosbridgeを介して、TCPによりyoubotを移動させるデモを実行する。作りかけ（操作を入力するスクリプトがまだない）。


