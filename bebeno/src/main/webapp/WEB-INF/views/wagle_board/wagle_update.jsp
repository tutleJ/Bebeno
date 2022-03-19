<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 글 수정</title>

    <link rel="stylesheet" href="%{ path }/resources/css_wagle/wagle_update.css">
</head>
<body>
    <section class="wagle_nav">
        <div class="wagle_buttons">
            <ul class="wagle_btn">
                <li id="menu_btn">전체보기</li>
                <li id="menu_btn">와인</li>
                <li id="menu_btn">바틀샵</li>
                <li id="menu_btn">와인바</li>
            </ul>
        </div>
        <div class="wagle_my_write_box">
            <ul class="wagle_write">
                <li><a href="${ path }/wagle_write.jsp">글쓰기</a></li>
                <li><a href="${ path }/wagle_write_manage.jsp">내 글 관리</a></li>
            </ul>
        </div>
    </section>
    <section class="wine-filter-box">
        <div class="wine-components">
            <ul>
                <li>
                    <p class="wine-c-txt">당도</p>
                    <div id="" class="filter-grade">
                    <a class='on'></a><a class='on'></a><a class='on'></a><a class='on'></a><a class='on'></a>								</div>
                </li>
                <li>
                    <p class="wine-c-txt">산도</p>
                    <div id="" class="filter-grade">
                    <a class='on'></a><a class='on'></a><a ></a><a ></a><a ></a></div>
                </li>
                <li>
                    <p class="wine-c-txt">바디</p>
                    <div id="" class="filter-grade">
                    <a class='on'></a><a class='on'></a><a class='on'></a><a class='on'></a><a class='on'></a>								</div>
                </li>
                <li>
                    <p class="wine-c-txt">타닌</p>
                    <div id="" class="filter-grade">
                    <a class='on'></a><a class='on'></a><a ></a><a ></a><a ></a>								</div>
                </li>
            </ul>
        </div>
    </section>
    <section class="wagle_update_box">
    <h2>글 수정하기</h2>
        <form th:action="@{/wagle_board/update}" method="POST">
            <input type="hidden" name="no" th:value="${ wagle_board.no }">
            <table class="tbl_wagle_board">
                <th class="th_box">작성자</th>
                    <td><input type="text" name="writer" th:value="${ wagle_board.writer }" readonly></td>
                <tr>
                    <th class="th_box">타입</th>
                    <td>
                        <strong>
                        <div class="wagle_cate_box">
                            <input type="checkbox" class="check_cate"><span>와인</span></input>
                            <input type="checkbox" class="check_cate"><span>바틀샵</span></label>
                            <input type="checkbox" class="check_cate"><span>와인바</span></label>
                        </div>
                    </strong>
                    </td>
                </tr>
                <tr>
                    <th class="th_box">와인명</th>
                    <td>
                        <input class="search_wine"> <input type="button" value="search">
                    </td>
                </tr>
                <tr>
                    <th class="th_box">장소</th>
                    <td>
                        <input class="search_place"> <input type="button" value="search">
                    </td>
                </tr>
                <tr>
                    <th class="th_box">제목</th>
                    <td>
                        <input type="text" name="title" id="title" th:value="${ wagle_board.title }">
                    </td>
                </tr>
                <tr>
                    <th class="th_box">사진변경</th>
                    <td>
                        <input type="file" name="upfile" id="" />
                    </td>
                </tr>
                <tr>
                    <th class="th_box">내용</th>
                    <td><textarea name="content" cols="40" rows="15" th:text="${ board.content }"></textarea></td>
                </tr>
                <tr class="wagle_update_button">
                    <th colspan="2">
                        <input type="submit" class="wagle_udt_btn" value="수정">
                        <input type="button" class="wagle_udt_btn" onclick="location.replace('${pageContext.request.contextPath}/wagle_board/list')" value="목록으로">
                    </th>
                </tr>           
            </table>
        </form>
    </section>
</body>
</html>