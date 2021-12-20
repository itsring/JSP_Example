<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>게시판 목록</title>
  </head>
  <body>
    <header class="container-fluid px-0">
      <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a href="#" class="navber-brand">LOGO</a>
        <div class="collapse navbar-collapse" id="mynavbar">
          <ul class="navbar-nav me-auto">
            <li class="nav-item">
              <a href="#" class="nav-link active">메뉴1</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link active">메뉴2</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link active">메뉴3</a>
            </li>
          </ul>
          <form class="d-flex">
            <a href="login.jsp" class="btn btn-outline-primary"> 로그인 </a>
          </form>
        </div>
      </nav>
      <div class="container">
        <div class="mt-4 p-5 bg-secondary rounded bg-opacity-50">
          <h1 class="text-center">게시판 목록 페이지</h1>
        </div>
      </div>
    </header>
    <main class="container">
      <section class="row">
        <article class="col-sm">
          <div class="table-responsive-sm">
            <table class="table table-hover table-striped text-center">
              <colgroup class="row">
                <col width="10%" />
                <col width="44%" />
                <col width="15%" />
                <col width="15%" />
                <col width="7%" />
                <col width="7%" />
              </colgroup>
              <thead class="">
                <tr>
                  <th>글 번호</th>
                  <th>제목</th>
                  <th>글쓴이</th>
                  <th>등록시간</th>
                  <th>조회수</th>
                  <th>추천수</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td class="text-start">테스트 제목</td>
                  <td>테스트 계정 01</td>
                  <td>2021년 12월 20일</td>
                  <td>10</td>
                  <td>10</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="clearfix">
            <a href="boardWrite.jsp" class="btn btn-primary float-end">
              글쓰기
            </a>
          </div>
        </article>
      </section>
    </main>
    <footer class="container-fluid text-center p-5 mt-5">
      <p class="lead text-muted">made by itsring</p>
    </footer>
  </body>
</html>
