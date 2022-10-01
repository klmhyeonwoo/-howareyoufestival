var noEmbed = 'https://noembed.com/embed?url=';
var urlForm = "https://www.youtube.com/watch?v=";

var subBtn = document.querySelector('.final_submit');
var youtubeImg = document.querySelector('#youtubeImg');
var youtubeMessage = document.querySelector('#youtubeMessage');
var youtubeKey = document.querySelector('#youtubeKey');
var youtubeSaveImg = document.querySelector('#youtubeSaveImg');

var youtube = {
    "url" : null,
    "thumb" : null,
};

function get_info(id){ // 유튜브 데이터 가져오는 함수
    const full_url = noEmbed + urlForm + id;
    fetch(full_url)
    .then(res => res.json())
    .then(data=>{
        set_info(data);
    });
}

function set_info(data) {
    const {url, thumbnail_url} = data;
    youtube.url = url;
    youtube.thumb = thumbnail_url;
}

function onErrorImg() {
    youtubeImg.src = `/assets/youtubeDefault.png`;
    youtubeMessage.innerText = "제대로된 링크를 입력해주세요!";
    youtubeMessage.style.color = "red";
    subBtn.disabled = true;
    subBtn.style.opacity = "70%";
    subBtn.style.transition = "all 0.8s";
}

function successImg () {
    subBtn.disabled = false;
    subBtn.style.opacity = "100%";
    subBtn.style.transition = "all 0.8s";
}

function checkUrl(currentVal) { // 유튜브 주소에서 ID 값만 쏙 빼오는 함수
    const index = currentVal.indexOf("=");
    const index2 = currentVal.indexOf("e/");
    currentVal = currentVal.replace(/ /g, "");

    if (currentVal === "") {
        youtubeMessage.innerText = "";
        youtubeMessage.style.color = "#707070";
        youtubeImg.src = `/assets/youtubeDefault.png`;
        youtubeMessage.innerText = "유튜브 링크를 복사 붙여넣기 해주세요!";
        youtubeMessage.style.color = "#707070";
    }

    else if (currentVal.includes("https://www.youtube.com/watch?v=")) {
        const Key = currentVal.slice(index+1, index+12);
        if (Key.length === 11) {
            if (index !== -1) {
            get_info(Key);
            youtubeImg.src = `https://i1.ytimg.com/vi/${Key}/hqdefault.jpg`; 
            youtubeMessage.innerText = "영상이 정상으로 업로드가 되었습니다, 사진이 제대로 뜨지 않는다면 링크를 재확인해주세요!";
            youtubeMessage.style.color = "#707070";
            youtubeKey.value = Key;
            youtubeSaveImg.value = `${youtube.thumb}`; // 유튜브 이미지 DB 저장
            successImg();
            }
        }
        else {
            youtubeMessage.innerText = "제대로된 링크를 입력해주세요!";
            youtubeMessage.style.color = "red";
            get_info(Key);
            youtubeImg.src = `${youtube.thumb}`;
        }
    }

    else if (currentVal.includes("https://youtu.be/")) {
        const Key = currentVal.slice(index2+2, index2+13);
        if (Key.length === 11) {
            if (index2 !== -1) {      
                get_info(Key);
                youtubeImg.src = `https://i1.ytimg.com/vi/${Key}/hqdefault.jpg`; 
                youtubeMessage.innerText = "영상이 정상으로 업로드가 되었습니다, 사진이 제대로 뜨지 않는다면 링크를 재확인해주세요!";
                youtubeMessage.style.color = "#707070";
                youtubeKey.value = Key;
                youtubeSaveImg.value = `${youtube.thumb}`; // 유튜브 이미지 DB 저장
                successImg();
            }
        }
            else {
                get_info(Key);
                youtubeImg.src = `${youtube.thumb}`;
                youtubeMessage.innerText = "제대로된 링크를 입력해주세요!";
                youtubeMessage.style.color = "red";
            }
    }

    else {
        youtubeMessage.innerText = "제대로된 링크를 입력해주세요!";
        youtubeMessage.style.color = "red";
        onErrorImg();
    }
}

function detection() {
$("#youtubeUrl").on("propertychange change keyup paste input", function() {
    var currentVal = $(this).val();
    if(currentVal == oldVal) {
        return;
    }
    var oldVal = currentVal;
    checkUrl(currentVal);
});
}

function init() { // 모든 함수는 이 쪽에서 실행이 됩니다.
detection();
}

init();