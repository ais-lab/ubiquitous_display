# Scripts

##demo_pantilt_move.sh

## 実行方法
Dynamixelに電源供給し，
```
roslaunch ubiquitous_display start_pantilt_dxl.launch
```
した状態で，
```
./demo_pantilt_move.sh 0 0
```
する．
引数は

* パン側の基準位置からの角度(radian) 
* チルト側の基準位置からの角度(radian)

## 結果
実世界のDynamixelが指定された位置に移動する．


##list_hokuyo_devs.sh
接続されているHokuyoのデバイスファイル名を列挙する

### 実行方法
$(rospack find ubiquitous_display)/scripts/list_hokuyo_devs.sh

### 結果（1つだけ接続されている場合）
/dev/ttyACM1
```
