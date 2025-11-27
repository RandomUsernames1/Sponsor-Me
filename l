<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            color: #000;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
            background-color: #f0f0f0;
            transition: background-color 0.3s ease;
        }
        .message {
            max-width: 90%;
            line-height: 1.6;
        }
        .disclaimer {
            font-size: 0.7em;
            margin-top: 20px;
        }
        .color-buttons, .text-color-buttons {
            margin-top: 10px;
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            justify-content: center;
        }
        .color-button, .text-color-button {
            width: 20px;
            height: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.2s;
        }
        .color-button:hover, .text-color-button:hover {
            transform: scale(1.3);
        }
        #follow-text {
            position: absolute;
            font-size: 12px;
            color: #333;
            display: none;
            pointer-events: none;
            transition: transform 0.1s ease;
        }

        /* Slow sliding text at the bottom */
        #sliding-text {
            position: absolute;
            bottom: 10px;
            font-size: 14px;
            color: #333;
            white-space: nowrap;
            animation: slide 20s linear infinite;
        }

        /* Sliding animation */
        @keyframes slide {
            0% {
                left: -100%;
            }
            100% {
                left: 100%;
            }
        }

        .instruction-text {
            font-size: 14px;
            margin-bottom: 10px;
        }

        /* Small message in top-left corner */
        #refresh-message {
            position: absolute;
            top: 10px;
            left: 10px;
            font-size: 10px;
            color: #333;
            z-index: 10;
        }
    </style>
</head>
<body>
    <div class="message">
        Aberia, May you please think about donating a little bit of money to me so I can participate in the CEH Cert. If you say yes, than I will study for it for a couple weeks, so I am not going to do it straight away because I want to succeed. I am just wondering if by chance you'd enjoy helping me in this aspect of my life. For referance, I literally have no money, not a single cent so I am not trying to save money by messaging you, I literally have no money to do it, and I strongly feel like I am at the level where in order to pregress, I must take the next step, and I strongly think that step is to get a Cet, because I should get some intern work, because that will help a lot with my future. I obviously don't have a bank account so I am not too sure how you could send money to me, if you want to make sure I will spend it on it, I think you can buy me the cert and gift it to me so I can study and complete it, if your scared I won't actually do it, I can send daily updates with video footage or images, to show you the proof I am doing it, I promise if you donate to me I will study for many weeks if not months, before atrempting to solve it, I just want to know if you have any probelms we can dicuss before you send it, If something is off, feel free to tell me if you don't fee like helping me. This message isn't made by Ai, you can use Ai tool and it will say it isn't made by Ai, I spent lot's of time writting this in a document online before sending it on hack.chat. If I make money myself or get gifted it, my parents will take it away straight away, they took the 2 hundred dollars I got away from me on christmas, straight away, I lost all of it for no real reason. The chinese version of this has been used by Ai to translate ut, so you can chose which ever one is easier for you.
    </div>

    <!-- Instruction Text -->
    <div class="instruction-text">
        I know you love reading, so you can change the colour:
    </div>

    <!-- Text Color Change Buttons -->
    <div class="text-color-buttons">
        <button class="text-color-button" style="background-color: #000000;" onclick="changeTextColor('#000000')"></button>
        <button class="text-color-button" style="background-color: #ff0000;" onclick="changeTextColor('#ff0000')"></button>
        <button class="text-color-button" style="background-color: #00ff00;" onclick="changeTextColor('#00ff00')"></button>
        <button class="text-color-button" style="background-color: #0000ff;" onclick="changeTextColor('#0000ff')"></button>
        <button class="text-color-button" style="background-color: #ffff00;" onclick="changeTextColor('#ffff00')"></button>
        <button class="text-color-button" style="background-color: #ff00ff;" onclick="changeTextColor('#ff00ff')"></button>
        <button class="text-color-button" style="background-color: #00ffff;" onclick="changeTextColor('#00ffff')"></button>
        <button class="text-color-button" style="background-color: #ffffff;" onclick="changeTextColor('#ffffff')"></button>
    </div>

    <!-- Background Color Change Buttons -->
    <div class="color-buttons">
        <button class="color-button" style="background-color: #f0f0f0;" onclick="changeColor('#f0f0f0')"></button>
        <button class="color-button" style="background-color: #ffadad;" onclick="changeColor('#ffadad')"></button>
        <button class="color-button" style="background-color: #ffd6a5;" onclick="changeColor('#ffd6a5')"></button>
        <button class="color-button" style="background-color: #fdffb6;" onclick="changeColor('#fdffb6')"></button>
        <button class="color-button" style="background-color: #caffbf;" onclick="changeColor('#caffbf')"></button>
        <button class="color-button" style="background-color: #9bf6ff;" onclick="changeColor('#9bf6ff')"></button>
        <button class="color-button" style="background-color: #a0c4ff;" onclick="changeColor('#a0c4ff')"></button>
        <button class="color-button" style="background-color: #bdb2ff;" onclick="changeColor('#bdb2ff')"></button>
        <button class="color-button" style="background-color: #ffc6ff;" onclick="changeColor('#ffc6ff')"></button>
        <button class="color-button" style="background-color: #ffffff;" onclick="changeColor('#ffffff')"></button>
    </div>

    <div class="disclaimer">
        (All words were not generated with any AI, only the website was generated with AI)
    </div>

    <div id="follow-text">
        I like the Abelia flower too 😊
    </div>

    <!-- Sliding Text -->
    <div id="sliding-text">
        My brain's focused on you. I have always dreamt about you. I am coming to you because you're my last chance to get the CEH cert.
    </div>

    <!-- Refresh message in top left corner -->
    <div id="refresh-message">
        Refresh the page to change colors back to default.
    </div>

    <script>
        // Function to change the background color
        function changeColor(color) {
            document.body.style.backgroundColor = color;
        }

        // Function to change the text color
        function changeTextColor(color) {
            document.querySelector('.message').style.color = color;
            document.querySelector('.disclaimer').style.color = color;
        }

        // Mousemove event to track the cursor and display text
        document.addEventListener('mousemove', function(e) {
            const followText = document.getElementById('follow-text');
            followText.style.display = 'block';  // Show text
            followText.style.left = (e.pageX + 15) + 'px';  // Position the text near the cursor (with a small offset)
            followText.style.top = (e.pageY + 15) + 'px';   // Same for vertical positioning
        });
    </script>
</body>
</html>
