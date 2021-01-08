<?php

//1. POSTデータ取得
$deleteTarget = $_POST["deleteTarget"];

// 2. DB接続します
try {
  //ID:'root', Password: 'root'
  $pdo = new PDO('mysql:dbname=gs_db; charset=utf8; host=localhost','root','root');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}

//データ削除のSQL
$sql = "DELETE FROM gs_bm_table WHERE FIND_IN_SET (id, :targetID)"; //FIND_IN_SETでバインド変数内のidと一致するレコードを削除する
$param = implode(',',$deleteTarget);//削除対象のidが配列に入っているため、","で区切って文字列にする
// 1. SQL文を用意
$stmt = $pdo->prepare($sql);
//  2. バインド変数を用意

echo "\$param: ".$param."\n";
$stmt->bindValue(':targetID', $param, PDO::PARAM_STR); 

//  3. 実行
$status = $stmt->execute();

//４．データ削除処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("ErrorMessage:".$error[2]);
}else{
  //５．index.phpへリダイレクト
  echo "削除完了。1秒後に確認画面に戻ります。";
  header('refresh:1; url=select.php'); //1秒後にリダイレクト
  exit;


}
?>
