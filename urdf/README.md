### ud.urdf.xacro
UDをパーツの組み合わせとして記述するための、トップレベルのURDFです。このファイルは、各パーツのURDFをincludeするだけ、というふうにできるだけ簡潔に記述されるようにしたいです。

### youbot_base_only.urdf.xacro
移動プラットフォーム部分であるyoubotを記述するためのURDFです。

### body.urdf.xacro
胴体部を記述するURDFです。ルートは `bottom_pillers_link` です。 hokuyoセンサは `front_laser_adjuster_link` 、 `rear_laser_adjuster_link` に設置されます。

### pantilt.urdf.xacro
パンチルトプロジェクタを記述するURDFです。 ルートは `${name}base_link` です。 `${name}` には `<xacro:pantilt_name name="prefix_"/>` により具体的な名前を指定できます（この場合 `prefix_base_link` というリンク名になります）。

