<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Image Animation</title>
    <style>
        /* スタイルは適切に調整してください */
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        img {
            width: 500px;
            height: 600px;
        }
    </style>
</head>
<body>
    <img id="sample" src="">

    <script>
        var image = ['sample1.PNG', 'sample2.PNG', 'sample3.PNG'];
        var currentIndex = 0;
        var imageElement = document.getElementById('sample');

        function changeImage() {
            imageElement.src = 'image/' + image[currentIndex];

            currentIndex++;
            if (currentIndex >= image.length) {
                currentIndex = 0;
            }

            setTimeout(changeImage, 500); // 切り替え間隔（0.5秒）
        }

        // ページが読み込まれたらアニメーションを開始
        window.onload = function () {
            changeImage();
        };
    </script>
</body>
</html>
-->