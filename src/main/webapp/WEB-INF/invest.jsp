<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css" />
<link rel="stylesheet" href="/css/styles.css">

<title>Merit America Online Bank</title>
</head>

<body>
	<div class="topnav" id="myTopnav">
		<a href="/" id="logo" target="_blank"><img src="/img/logo.png"
			alt="logo"></a> <a href="/" >Home</a> <a
			href="/about">About Us</a> <a href="/checking" >Checking</a> <a
			href="/savings">Savings</a> <a href="/invest" class="active">Investments</a> <a
			href="/user/new">Sign Up</a> <a href="/user/{id}" class="login">Login</a>
		<a href="javascript:void(0);" class="icon" onclick="myFunction()">
			<i class="fa fa-bars"></i>
		</a>
		 <div class="login-container">
            <form action="user/{id}" method="GET">
                <input type="text" placeholder="Username" name="username">
                <input type="password" id="password" name="password" placeholder="Password" />
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <button type="submit">Login</button>
            </form>
        </div>
	</div>

	<div class="row">
		<div class="col-12 col-s-12" style="font-size: 25px">
		<h1 style="text-align:center;">you can't predict the future but you can <span style="color: #61d6a5;">save</span> for it.</h1>
		<img src="/img/invest.png" class="col-6" style="float:left; max-height: 450px; ">
		<h2>Traditional IRA:</h2>
		<p>Open a Traditional IRA for a tax-smart way to save for retirement.</p>
		<h2>Roth IRA:</h2>
		<p>You're interested in both tax-free growth and withdrawals. Roth IRA contributions are not tax-deductible.</p>
		<h2>Rollover IRA:</h2>
		<p>One way to take control of your retirement savings is to roll over your plan from a former employer.</p>
		</div>
	</div>
<div class="row">
		<div class="details col-12">
			<h2>The Basics</h2>
			<table>
			<tr>
				<td>
					<i class="fas fa-mobile-alt fa-2x"></i>
					<p>Digital banking tools. It’s easy to bank anytime, anywherewith the Ally Mobile app.</p>
				</td>
				<td>
					<i class="far fa-check-square fa-2x"></i>
					<p>Your money, FDIC-insured. Deposits are insured by the FDIC up to the maximum allowed by law.</p>
				</td>
				<td>
					<i class="fas fa-ban fa-2x"></i>
					<p>No monthly maintenance fees. Don’t expect any sneaky monthly maintenance fees with us.</p>
				</td>
				<td>
					<i class="fas fa-exclamation fa-2x"></i>
					<p>No minimum opening deposit. Open an account with no minimum balance requirement.</p>
				</td>
			</table>
		</div>
	</div>



	<div class="footer">
		<p>Merit America | Team 3</p>
		<a href="https://github.com/jghoang/onlinebank"><img
			src="/img/github.png" alt="git"></a>
		<p>[View our project on GitHub]</p>
	</div>

	<script>
		/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
	</script>
</body>

</html>