<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100%}body{margin:0}a{background-color:transparent}[hidden]{display:none}html{font-family:system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;line-height:1.5}*,:after,:before{box-sizing:border-box;border:0 solid #e2e8f0}a{color:inherit;text-decoration:inherit}svg,video{display:block;vertical-align:middle}video{max-width:100%;height:auto}.bg-white{--bg-opacity:1;background-color:#fff;background-color:rgba(255,255,255,var(--bg-opacity))}.bg-gray-100{--bg-opacity:1;background-color:#f7fafc;background-color:rgba(247,250,252,var(--bg-opacity))}.border-gray-200{--border-opacity:1;border-color:#edf2f7;border-color:rgba(237,242,247,var(--border-opacity))}.border-t{border-top-width:1px}.flex{display:flex}.grid{display:grid}.hidden{display:none}.items-center{align-items:center}.justify-center{justify-content:center}.font-semibold{font-weight:600}.h-5{height:1.25rem}.h-8{height:2rem}.h-16{height:4rem}.text-sm{font-size:.875rem}.text-lg{font-size:1.125rem}.leading-7{line-height:1.75rem}.mx-auto{margin-left:auto;margin-right:auto}.ml-1{margin-left:.25rem}.mt-2{margin-top:.5rem}.mr-2{margin-right:.5rem}.ml-2{margin-left:.5rem}.mt-4{margin-top:1rem}.ml-4{margin-left:1rem}.mt-8{margin-top:2rem}.ml-12{margin-left:3rem}.-mt-px{margin-top:-1px}.max-w-6xl{max-width:72rem}.min-h-screen{min-height:100vh}.overflow-hidden{overflow:hidden}.p-6{padding:1.5rem}.py-4{padding-top:1rem;padding-bottom:1rem}.px-6{padding-left:1.5rem;padding-right:1.5rem}.pt-8{padding-top:2rem}.fixed{position:fixed}.relative{position:relative}.top-0{top:0}.right-0{right:0}.shadow{box-shadow:0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06)}.text-center{text-align:center}.text-gray-200{--text-opacity:1;color:#edf2f7;color:rgba(237,242,247,var(--text-opacity))}.text-gray-300{--text-opacity:1;color:#e2e8f0;color:rgba(226,232,240,var(--text-opacity))}.text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.text-gray-500{--text-opacity:1;color:#a0aec0;color:rgba(160,174,192,var(--text-opacity))}.text-gray-600{--text-opacity:1;color:#718096;color:rgba(113,128,150,var(--text-opacity))}.text-gray-700{--text-opacity:1;color:#4a5568;color:rgba(74,85,104,var(--text-opacity))}.text-gray-900{--text-opacity:1;color:#1a202c;color:rgba(26,32,44,var(--text-opacity))}.underline{text-decoration:underline}.antialiased{-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.w-5{width:1.25rem}.w-8{width:2rem}.w-auto{width:auto}.grid-cols-1{grid-template-columns:repeat(1,minmax(0,1fr))}@media (min-width:640px){.sm\:rounded-lg{border-radius:.5rem}.sm\:block{display:block}.sm\:items-center{align-items:center}.sm\:justify-start{justify-content:flex-start}.sm\:justify-between{justify-content:space-between}.sm\:h-20{height:5rem}.sm\:ml-0{margin-left:0}.sm\:px-6{padding-left:1.5rem;padding-right:1.5rem}.sm\:pt-0{padding-top:0}.sm\:text-left{text-align:left}.sm\:text-right{text-align:right}}@media (min-width:768px){.md\:border-t-0{border-top-width:0}.md\:border-l{border-left-width:1px}.md\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}}@media (min-width:1024px){.lg\:px-8{padding-left:2rem;padding-right:2rem}}@media (prefers-color-scheme:dark){.dark\:bg-gray-800{--bg-opacity:1;background-color:#2d3748;background-color:rgba(45,55,72,var(--bg-opacity))}.dark\:bg-gray-900{--bg-opacity:1;background-color:#1a202c;background-color:rgba(26,32,44,var(--bg-opacity))}.dark\:border-gray-700{--border-opacity:1;border-color:#4a5568;border-color:rgba(74,85,104,var(--border-opacity))}.dark\:text-white{--text-opacity:1;color:#fff;color:rgba(255,255,255,var(--text-opacity))}.dark\:text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.dark\:text-gray-500{--tw-text-opacity:1;color:#6b7280;color:rgba(107,114,128,var(--tw-text-opacity))}}
        </style>

        <css-doodle>
            <style>
            @grid: 50x1 / 50vmin;
            :container {
                perspective: 23vmin;
            }
            background: @m(
                @r(200, 240), 
                radial-gradient(
                @p(#00b8a9, #f8f3d4, #f6416c, #ffde7d) 15%,
                transparent 50%
                ) @r(100%) @r(100%) / @r(1%, 3%) @lr no-repeat
            );
        
            @size: 80%;
            @place-cell: center;
        
            border-radius: 50%;
            transform-style: preserve-3d;
            animation: scale-up 20s linear infinite;
            animation-delay: calc(@i * -.4s);
        
            @keyframes scale-up {
                0% {
                opacity: 0;
                transform: translate3d(0, 0, 0) rotate(0);
                }
                10% { 
                opacity: 1; 
                }
                95% {
                transform:
                    translate3d(0, 0, @r(50vmin, 55vmin))
                    rotate(@r(-360deg, 360deg));
                }
                100% {
                opacity: 0;
                transform: translate3d(0, 0, 1vmin);
                }
            }
            </style>
        </css-doodle>

        <style>
           html, body { 
            height: 100%; 
            margin: 0; 
            overflow: hidden;
            overflow: clip; 
            contain: content;
            }
            body {
            display: flex;
            align-items: center;
            justify-content: center;
            background: #000; 
        }

         

            table {
                border-spacing: 0;
                border-collapse: collapse;
                opacity: 1;
                table-layout: fixed;
                width: 100%;
            }

            td {
                border: 3px solid;
                border-color:  #3399ff;
                padding: 1%;
                box-shadow: 0 4px 4px 0  #3399ff, 0 4px 7px 6px rgb(189, 243, 245);
                
            }
            /* #ffd700 */
            /* #3399ff */

            h1, h2{
                text-align: center;
                color: white;
            }

            .tablewrapper{
                top: 5%;
                left: 28%;
                position: absolute;
                z-index: 99;
                width: 900px;
                height: 900px;
            }

            .gq{
                width:280px;
                height:270px;
                padding-top: 1.5%;
            }

            /* Ini adalah Spinning Card */
            .blue {
                background: #5cele6;
                border-radius: 4px;
                display: flex;
                align-items: center;
                justify-content: center;
                /* box-shadow: 0 4px 7px 0 rgb(211, 247, 248), 0 6px 15px 0 rgb(189, 243, 245); */
                animation: rotate 5s cubic-bezier(0.54, 0.13, 0.3, 0.87);
                /* animation: rotate 3s cubic-bezier(0.33, 0.03, 0.03, 0.13); */
            }

            .gold {
                background: #5cele6;
                display: flex;
                align-items: center;
                justify-content: center;
                /* box-shadow: 0 4px 7px 0 rgb(211, 247, 248), 0 6px 15px 0 rgb(189, 243, 245); */
                /* animation: rotate 5s cubic-bezier(0.54, 0.13, 0.3, 0.87); */
                animation: gold_rotate 7s cubic-bezier(0.54, 0.13, 0.03, 1);
            }

            gifts {
                
            }

            @keyframes rotate {
            0% {
                transform: rotateY(0turn);
            }
            100% {
                transform: rotateY(10turn);
            }
            }

            @keyframes gold_rotate {
            0% {
                transform: rotateY(0turn);
            }
            100% {
                transform: rotateY(50turn);
            }
            }
            
            /* Ini adalah bouncing button */
            .ud_solution {
                width: 90%;
                /* min-height: 100px;*/
                padding: 120px 0 0 0; 
                float: left;
                position: relative;
                margin: 5% 5% 0 5%;
                background-size: cover;
                text-align: center;
            }
            .ud_solution:last-child {
                margin: 5%;
            }
            .ud_solution h2 {
                text-transform: uppercase;
                position: absolute;
                top: 15px;
                left: 40px;
                font-family: "Oswald", sans-serif;
                line-height: 25px;
                font-weight: 700;
                text-align: left;
            }
            .ud_solution h2 span {
                font-size: 15px;
                color: #ff6600;
                font-weight: 500;
            }

            .ud_button {
                font-family: "Oswald", sans-serif;
                top: 65%;
                left: 50%;
                transform: translateX(-50%) translateY(-50%);
            }

            #Button3 .ud_button {
                padding: 15px 25px 15px 25px;
                font-size: 20px;
                color: #fff;
                text-decoration: none;
                text-transform: uppercase;
                position: absolute;
                z-index: 2;
                display: block;
                width: 150px;
            }
            #Button3 .ud_button::before {
                z-index: -1;
                content: "";
                position: absolute;
                top: 0;
                right: 0;
                left: 0;
                bottom: 0;
                background: #111;
                border-radius: 30px;
            }
            #Button3 .ud_button::after {
                z-index: -2;
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: #3399ff;
                transform: scale(1, 1);
                border-radius: 20px;
            }
            #Button3 .ud_button:hover:after {
                animation: ease-in-out infinite 1000ms ud_bounce;
            }

            @keyframes ud_bounce {
            0% {
                transform: scale(1, 1);
            }
            50% {
                transform: scale(1.1, 1.3);
            }
            100% {
                transform: scale(1, 1);
            }
            }
            
            /* Shake Animation */

            .shake_gq {
                animation: shake 0.5s;
                animation-iteration-count: 3;
            }

            @keyframes shake {
                0% { transform: translate(1px, 1px) rotate(0deg); }
                10% { 
                transform: translate(-1px, -2px) rotate(-2deg); 
                background-color: #774212;}
                20% { transform: translate(-3px, 0px) rotate(2deg); }
                30% { transform: translate(3px, 2px) rotate(0deg); }
                40% { transform: translate(1px, -1px) rotate(2deg); }
                50% { transform: translate(-1px, 2px) rotate(-2deg); }
                60% { transform: translate(-3px, 1px) rotate(0deg); }
                70% { transform: translate(3px, 1px) rotate(-2deg); }
                80% { transform: translate(-1px, -1px) rotate(2deg); }
                90% { transform: translate(1px, 2px) rotate(0deg); }
                100% { transform: translate(1px, -2px) rotate(-2deg); }
            }
            
        </style>
        
    </head>
    <body class="antialiased">
        <canvas id="bg"></canvas>
        
        <div class="tablewrapper">
            <div>
                <h1>CTSABAH 2022 FAMILY DAY LUCKY DRAW</h1>
            </div>
            <table>
                <thead></thead>
                <tbody>
                    <tr>
                        <td> 
                            <div class="anim_wrap"><img id="1" src="img/gq-sepia.gif" alt="whut" class="gq add_gold"></div>
                        </td>
                        <td><img id="2" src="img/gq.gif" alt="whut" class="gq"></td>
                        <td><img id="3" src="img/gq.gif" alt="whut" class="gq"></td>
                    </tr>
                    <tr>
                        <td><img id="4" src="img/gq.gif" alt="whut" class="gq"></td>
                        <td><img id="5" src="img/gq.gif" alt="whut" class="gq"></td>
                        {{-- <td><div class="gold_wrap"><img src="img/gq-sepia.gif" alt="whut" class="gq gold"></div></td> --}}
                        <td><div class="anim_wrap"><img id="6" src="img/gq-sepia.gif" alt="whut" class="gq add_gold"></div></td>

                    </tr>
                    <tr>
                        <td><img id="7" src="img/gq.gif" alt="whut" class="gq"></td>
                        <td><img id="8" src="img/gq.gif" alt="whut" class="gq"></td>
                        <td><img id="0" src="img/gq.gif" alt="whut" class="gq"></td>
                    </tr>
                </tbody>
            </table>
            <div id="Button3" class="ud_solution">
                <a href="#" class="ud_button" id="b3" role="button">Press Here</a>
            </div>
        </div>
        <div>
            
        </div>
        
    </body>
</html>

<script src="{{asset('js/jquery-3.6.1.min.js')}}"></script>
<script src="{{asset('js/css-doodle.min.js')}}"></script>
<script>
    var b3 = document.getElementById("b3");
    const audio = new Audio("/sound/spin.mp3");
    // Code for Chrome, Safari and Opera
    b3.addEventListener("click", someSound);
    
    function someSound(){
        var element = document.getElementsByClassName('gq');

        audio.play();

        for(let i = 0; i < element.length; i++){
            //console.log(element[i].classList.contains('gold'));
            if(element[i].classList.contains('add_gold')){
                element[i].classList.remove('gold'); // reset animation
                void element[i].offsetWidth; // trigger reflow
                element[i].classList.add('gold'); // start animation
            }else{
                element[i].classList.remove('blue'); // reset animation
                void element[i].offsetWidth; // trigger reflow
                element[i].classList.add('blue'); // start animation
            }
        };

        // $(".gq").each(function(){
        //     if($(this).hasClass('blue')){
        //         $(this).removeClass('blue'); // reset animation
        //         $(this).addClass('blue'); // start animation
        //     }else{
        //         $(this).removeClass('gold'); // reset animation
        //         $(this).addClass('gold'); // start animation
        //     }
        // });

        // if (Image_Id.src.match("img/gq.gif")) {
        //     Image_Id.src = "img/gq-sepia.gif";
        // }
        // else {
        //     Image_Id.src = "img/gq.gif";
        // }
    }

    // var anim = document.getElementsByClassName("anim");
    // Code for Chrome, Safari and Opera
    // anim.addEventListener("webkitAnimationEnd", changePic);
    // function changePic(){
    //     var Image_Id = document.getElementsByClassName("anim");
    //     if (Image_Id.src.match("img/gq.gif")) {
    //         Image_Id.src = "img/gq-sepia.gif";
    //     }
    //     else {
    //         Image_Id.src = "img/gq.gif";
    //     }
    // }

    var gq = document.getElementsByClassName("gq");
    console.log(gq);
    for(let i = 0; i < gq.length; i++){
        gq[i].addEventListener("webkitAnimationEnd", function(){
            changePic(i);
        });
        // gq[i].addEventListener("animationend", changePic(i));
    }
   
    function changePic(i){
        // var e = document.getElementById(i);
        var e = document.getElementsByClassName("gq");
        if (e[i].src.match("img/gq.gif")) {
            for(let j = 0; j < 10; j++){
                setTimeout(() => {
                    
                this.gq[i].style.opacity = this.gq[i].style.opacity - 0.1;
                    
                }, 250);
            }

            e[i].src = "img/gifts/2.jpg"; 
        }
        else if(e[i].src.match("img/gq-sepia.gif")){
            e[i].src = "img/gifts/1.jpg";
        }
    }

      "use strict";
    // background animation
    (function() {

    var Base, Particle, canvas, colors, context, draw, drawables, i, mouseX, mouseY, mouseVX, mouseVY, rand, update, click, min, max, colors, particles;

    min = 1;
    max = 8;
    particles = 200;
    colors = ["64, 32, 0", "250, 64, 0", "64, 0, 0", "200, 200, 200"];

    rand = function(a, b) {
        return Math.random() * (b - a) + a;
    };

    Particle = (function() {
        function Particle() {
        this.reset();
        }

        Particle.prototype.reset = function() {
        this.color = colors[~~(Math.random()*colors.length)];
        this.radius = rand(min, max);
        this.x = rand(0, canvas.width);
        this.y = rand(-20, canvas.height*0.5);
        this.vx = -5 + Math.random()*10;
        this.vy = 0.7 * this.radius;
        this.valpha = rand(0.02, 0.09);
        this.opacity = 0;
        this.life = 0;
        this.onupdate = undefined;
        this.type = "dust";
        };

        Particle.prototype.update = function() {
        this.x = (this.x + this.vx/3);
        this.y = (this.y + this.vy/3);

        if(this.opacity >=1 && this.valpha > 0) this.valpha *=-1;
        this.opacity += this.valpha/3;
        this.life += this.valpha/3;

        if(this.type === "dust")
            this.opacity = Math.min(1, Math.max(0, this.opacity));
        else
            this.opacity = 1;

        if(this.onupdate) this.onupdate();
        if(this.life < 0 || this.radius <= 0 || this.y > canvas.height){
            this.onupdate = undefined;
            this.reset();
        }
        };

        Particle.prototype.draw = function(c) {
        c.strokeStyle = "rgba(" + this.color + ", " + Math.min(this.opacity, 0.85) + ")";
        c.fillStyle = "rgba(" + this.color + ", " + Math.min(this.opacity, 0.65) + ")";
        c.beginPath();
        c.arc(this.x, this.y, this.radius, 2 * Math.PI, false);
        c.fill();
        c.stroke();
        };

        return Particle;

    })();

    mouseVX = mouseVY = mouseX = mouseY = 0;

    canvas = document.getElementById("bg");
    context = canvas.getContext("2d");
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    drawables = (function() {
        var _i, _results;
        _results = [];
        for (i = _i = 1; _i <= particles; i = ++_i) {
        _results.push(new Particle);
        }
        return _results;
    })();

    draw = function() {
        var d, _i, _len;
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
        context.clearRect(0, 0, canvas.width, canvas.height)

        for (_i = 0, _len = drawables.length; _i < _len; _i++) {
        d = drawables[_i];
        d.draw(context);
        }
    };

    update = function() {
        var d, _i, _len, _results;
        _results = [];
        for (_i = 0, _len = drawables.length; _i < _len; _i++) {
        d = drawables[_i];
        _results.push(d.update());
        }
        return _results;
    };

    document.onmousemove = function(e) {
        mouseVX = mouseX;
        mouseVY = mouseY;
        mouseX = ~~e.pageX;
        mouseY = ~~e.pageY;
        mouseVX = ~~((mouseVX - mouseX)/2);
        mouseVY = ~~((mouseVY - mouseY)/2);

    };

    window.addEventListener('resize', draw, false);
    setInterval(draw, 1000 / 30);
    setInterval(update, 1000 / 60);
    }).call(this);
</script>
