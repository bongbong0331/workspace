<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	display: flex;
	margin: 0;
	background-color: #fefefe;
	justify-content: center;
}

h1,h2,h3,h4,h5,h6{
	margin: 0;
}

section {
	margin: 40px 20px;
	padding: 20px;
	display: flex;
}

article.main{
	display: flex;
	flex: 3;
	order: 2;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

article.side1{
	flex: 1;
	order: 1;
}
article.side2{
	flex: 2;
	order: 3;
	text-align: right;
}


</style>
</head>
<body>
	<section>
		<article class="main">
			<img alt="main_img" src="image/main_img.jpg">
			<h2>Main Content</h2>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
		</article>

		<article class="side1">
			<h2>Side Content 1</h2>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
		</article>

		<article class="side2">
			<h2>Side Content 2</h2>
			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
		</article>
	</section>
</body>
</html>