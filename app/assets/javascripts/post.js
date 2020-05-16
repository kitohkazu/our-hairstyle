// HTMLの読み込みが終わってからjsタグを読み込む
$(function(){
  // 下記処理はhttps://developer.mozilla.org/ja/docs/Web/API/FileReader/onloadを参照
  // 一つ目のfile_fieldでイベントが発火した時（画像選択した時）に下記のコールバック関数呼び出し
  $('.file_field1').on('change', function(e){
    // targetプロパティによりイベントが発生したDOM要素を取得し、ファイルのブラウザ上でのURLを取得する（）
    var file = e.target.files[0];
    // FileReader()コンストラクタを使用して新規FileReaderを作成
    var reader = new FileReader();
    // image fileがロードされた時に発火するイベント
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);
      // 新規画像追加の処理
      $(".img_box1").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
})

  $('.file_field2').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box2").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $('.file_field3').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      var ar = new Uint8Array(reader.result);  
      $(".img_box3").append($("<img class = photo_img>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  

  $('.remove_btn1').on('click', function(){
    $('#image').val('');
    $('.img_box1').html('');
  })

  $('.remove_btn2').on('click', function(){
    $('#image2').val('');
    $('.img_box2').html('');
  })

  $('.remove_btn3').on('click', function(){
    $('#image3').val('');
    $('.img_box3').html('');
  })
})