<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<title>Mau Jadi Pacarku?</title>

<style>
body{
    margin:0;
    padding:0;
    background: linear-gradient(135deg,#000000,#1a0000);
    font-family: Arial, sans-serif;
    text-align:center;
    color:white;
    overflow:hidden;
}

h1{
    margin-top:120px;
    font-size:40px;
    color:#ff4d6d;
}

p{
    font-size:18px;
}

button{
    padding:12px 30px;
    font-size:18px;
    border:none;
    border-radius:25px;
    margin:15px;
    cursor:pointer;
}

#yes{
    background:#ff2e63;
    color:white;
}

#no{
    background:#444;
    color:white;
    position:absolute;
}

.heart{
    position:fixed;
    top:-10px;
    font-size:20px;
    color:#ff4d6d;
    animation:fall linear infinite;
}

@keyframes fall{
    to{
        transform:translateY(110vh);
    }
}
</style>

</head>

<body>

<h1>❤️ Kamu Mau Jadi Pacarku? ❤️</h1>
<p>Aku sudah lama ingin mengatakan ini...</p>

<button id="yes">YES ❤️</button>
<button id="no">NO 😅</button>

<script>

const yes = document.getElementById("yes");
const no = document.getElementById("no");

yes.addEventListener("click", function(){
    alert("Yeeey ❤️ Sekarang kamu resmi jadi pacarku!");
});

no.addEventListener("mouseover", function(){
    const x = Math.random() * (window.innerWidth - 100);
    const y = Math.random() * (window.innerHeight - 50);

    no.style.left = x + "px";
    no.style.top = y + "px";
});

function createHeart(){
    const heart = document.createElement("div");
    heart.classList.add("heart");
    heart.innerHTML="❤️";

    heart.style.left = Math.random()*100 + "vw";
    heart.style.fontSize = (Math.random()*20+15)+"px";
    heart.style.animationDuration = (Math.random()*3+3)+"s";

    document.body.appendChild(heart);

    setTimeout(()=>{
        heart.remove();
    },6000);
}

setInterval(createHeart,300);

</script>

</body>
</html>