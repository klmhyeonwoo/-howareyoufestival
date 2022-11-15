![하우아유 페스티벌 로고](https://user-images.githubusercontent.com/19422885/201467479-6c88333f-9eb8-4928-946a-101195027b0e.png)
> ##### 대학교 축제 정보가 너무 가독성이 안 좋아요, 그래서 학생들을 위해 한번 만들어봤어요 👏🏻
  - ##### 프로젝트 설명은 오른쪽 노션 링크에서 확인 가능해요 : <a href="https://klmhyeonwoo.oopy.io/8d9b92e6-0077-47c7-a06c-263460526cf5">Introduce</a>

##### 프로젝트 시작은 이렇게 해요
- ##### rails s (필요시, bundle install or rake db:migrate)
##### 버젼은 이렇게 사용을 하고 있어요
- ##### Rails 7.0.2.4
- ##### ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-darwin19]
##### Gem 라이브러리는 다음과 같은 것들을 사용해요
- ##### gem "rack-cors" - cors 에러 수정해주는 gem
- ##### gem "carrierwave" - 이미지 업로드 기능 구현을 위한 gem
- ##### gem 'devise' - Ruby on Rails 회원가입 기능 구현을 위한 gem
- ##### gem 'devise-i18n'- 영문으로 되어진 devise gem 라이브러리의 번역을 도와주는 gem
- ##### gem "rails_db" - 데이터베이스 스키마를 확인하기 위한 gem
- ##### gem 'jquery-rails' - 퀵 메뉴 구현을 위해 jquery 문법을 사용하기 위한 gem
- ... 그 밖에 scaffold를 사용하여 게시물을 구현하였어요
##### 배포는 다음과 같이 진행을 해요
- ##### 깃허브와 헤로쿠 브런치의 꼬임을 방지하기 위해서 한 브런치로 헤로쿠 커밋을 진행해요 🤔
- ##### 헤로쿠에 커밋을 할 때는 `221114` 브런치로 주로 커밋해요 (그 외에는 코드관리를 위해 깃 플로우를 사용해요)
  - ##### git push heroku HEAD:main
- ##### 배포된 홈페이지는 오른쪽 링크로 접속이 가능해요 : <a href="owareyoufestival.herokuapp.com">howareyoufestival web</a>
##### 프로젝트는 이런 환경으로 만들어졌어요
<img src="https://user-images.githubusercontent.com/19422885/201467830-e0318668-d782-4c57-9c2d-bc2588bbc7c4.png" style="width:700px"/>
