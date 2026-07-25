<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>قلب آسر ❤️</title>
    <style>
        * { box-sizing: border-box; }
        body {
            background-color: #050505;
            color: white;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
            text-align: center;
        }

        .container {
            background: rgba(20, 20, 20, 0.95);
            padding: 40px;
            border-radius: 25px;
            border: 2px solid #ff1744;
            box-shadow: 0 0 30px rgba(255, 23, 68, 0.5);
            z-index: 100;
            max-width: 90%;
        }

        input {
            width: 100%;
            padding: 15px;
            margin: 20px 0;
            border-radius: 10px;
            border: 1px solid #333;
            background: #111;
            color: #ff1744;
            font-size: 20px;
            text-align: center;
        }

        button {
            background: #ff1744;
            color: white;
            border: none;
            padding: 15px 40px;
            border-radius: 50px;
            cursor: pointer;
            font-size: 20px;
            font-weight: bold;
            transition: 0.3s;
            box-shadow: 0 5px 15px rgba(255, 23, 68, 0.3);
        }

        button:hover { transform: scale(1.1); background: #ff4d6d; }

        /* الأقسام المخفية */
        #welcomeStep, #finalContent { display: none; }

        .heart-bg {
            position: absolute;
            bottom: -50px;
            font-size: 25px;
            animation: float 4s linear forwards;
            opacity: 0.7;
        }

        @keyframes float {
            to { transform: translateY(-110vh) rotate(360deg); opacity: 0; }
        }

        h1 { font-size: 2.5rem; color: #ff1744; text-shadow: 0 0 10px #ff1744; }
        p { font-size: 1.5rem; line-height: 1.6; }
    </style>
</head>
<body>

    <!-- الخطوة 1: كلمة السر -->
    <div class="container" id="passwordStep">
        <h1>🔒 منطقة خاصة</h1>
        <p>اكتب تاريخ الميلاد (الباسورد)</p>
        <input type="text" id="passInput" placeholder="2011-9-1">
        <br>
        <button onclick="checkPassword()">دخول</button>
    </div>

    <!-- الخطوة 2: الترحيب -->
    <div class="container" id="welcomeStep">
        <h1>أهلاً بيك في قلب آسر ❤️</h1>
        <br>
        <button onclick="showFinal()">دخول قلب آسر</button>
    </div>

    <!-- الخطوة 3: الرسالة النهائية -->
    <div class="container" id="finalContent">
        <h1>ازيك يا أحلى فاتوشة ❤️</h1>
        <p>وأنا بقولك بحبك</p>
        <div style="font-size: 80px;">💋🥰❤️</div>
    </div>

    <script>
        // التحقق من الباسورد
        function checkPassword() {
            const pass = document.getElementById('passInput').value;
            if (pass === "2011-9-1") {
                document.getElementById('passwordStep').style.display = 'none';
                document.getElementById('welcomeStep').style.display = 'block';
                startAnimation(); // تبدأ القلوب تطير من أول هنا
            } else {
                alert("الباسورد غلط.. جرب تاني يا قمر!");
            }
        }

        // إظهار الرسالة الأخيرة
        function showFinal() {
            document.getElementById('welcomeStep').style.display = 'none';
            document.getElementById('finalContent').style.display = 'block';
        }

        // أنيميشن القلوب والبوسات
        function startAnimation() {
            const emojis = ['❤️', '💋', '💖', '😘', '🌹'];
            setInterval(() => {
                const el = document.createElement('div');
                el.className = 'heart-bg';
                el.innerHTML = emojis[Math.floor(Math.random() * emojis.length)];
                el.style.left = Math.random() * 100 + 'vw';
                el.style.animationDuration = (Math.random() * 2 + 3) + 's';
                document.body.appendChild(el);
                setTimeout(() => el.remove(), 4000);
            }, 200);
        }
    </script>
</body>
</html>
