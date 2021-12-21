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
    <script>
    </script>
    <title>Insert title here</title>
  </head>
  <body>
  
    <%@include file="header.jsp" %>
    <main class="container mt-5">
      <section class="row">
        <article class="col-sm-4 mx-auto">
          <form action="./loginCheck.jsp" method="post">
            <div class="my-3">
              <label for="userId" class="form-label">ID : </label>
              <input
                type="text"
                class="form-control"
                id="userId"
                name="userId"
                placeholder="ID를 입력해 주세요"
              />
            </div>
            <div class="my-3">
              <label for="userPw" class="form-label">PASSWORD : </label>
              <input
                type="password"
                class="form-control"
                id="userPw"
                name="userPw"
                placeholder="PASSWORD를 입력해 주세요"
              />
            </div>
            <div class="d-grid gap-3">
              <button type="submit" class="btn btn-primary">로그인</button>
              <a href="signIn.jsp" class="btn btn-secondary">회원가입</a>
            </div>
          </form>
        </article>
      </section>
    </main>
    <%@include file="footer.jsp" %>
  </body>
</html>
