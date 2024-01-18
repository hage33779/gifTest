<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>King of Foxes</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .image-container {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        img.main-image {
            width: 40%; /* Increased size */
            height: auto; /* Maintain aspect ratio */
        }
        img.side-image {
            width: 15%; /* Adjusted for side image */
            height: auto; /* Maintain aspect ratio */
            position: absolute; /* Positioning relative to its normal position */
            right: 30%; /* Position to the right */
            display: none; /* Hide side image by default */
        }
        #buttons {
            display: flex;
            justify-content: center;
            margin: 20px;
        }
        button {
            margin: 0 10px;
            padding: 15px 30px; /* Increased padding for bigger buttons */
            font-size: 1.2em; /* Larger font size */
            cursor: pointer; /* Cursor pointer for better UX */
        }

    </style>
</head>
<body>
    <div id="buttons">
        <button onclick="displaySideImage('5.PNG')">高級フード</button>
        <button onclick="displaySideImage('4.PNG')">一般フード</button>
        <button onclick="displaySideImage('3.PNG')">無料フード</button>
    </div>
    <div class="image-container">
        <img id="mainImage" class="main-image" src="image/11.PNG" alt="Main Image">
        <img id="sideImage" class="side-image" src="" alt="Side Image">
    </div>
    
    <script>
        const mainImage = document.querySelector("#mainImage");
        const sideImage = document.querySelector("#sideImage");
        let mainImages = ['image/11.PNG', 'image/2.PNG'];
        let mainCount = 0;

        function displaySideImage(imgFile) {
            sideImage.src = 'image/' + imgFile;
            sideImage.style.display = 'block'; // Show the side image
        }

        function autoChangeMainImage() {
            mainImage.src = mainImages[mainCount % mainImages.length];
            mainCount++;
        }

        setInterval(autoChangeMainImage, 500); // Change every 0.5 seconds

        // Initial call to start the cycle
        autoChangeMainImage();
    </script>
</body>
</html>