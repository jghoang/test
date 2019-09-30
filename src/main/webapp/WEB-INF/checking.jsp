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
<style type="text/css">
@media screen and (max-width: 767px) {
	.cardBox {
		margin-left: 2.8%;
		margin-top: 3%;
		width: 46%;
	}
	.flip-card {
		height: 285px;
	}
	.cardBox:last-child {
		margin-bottom: 3%;
	}
}

@media screen and (max-width: 480px) {
	.cardBox {
		width: 94.5%;
	}
	.flip-card {
		height: 260px;
	}
	.flip-card .front, .flip-card .back {
		font-size: 1em;
	}
}
</style>
<title>Merit America Online Bank</title>
</head>

<body>
	<div class="topnav" id="myTopnav">
		<a href="/" id="logo" target="_blank"><img src="/img/logo.png"
			alt="logo"></a> <a href="/" >Home</a> <a
			href="/about">About Us</a> <a href="/checking" class="active">Checking</a> <a
			href="/savings">Savings</a> <a href="/invest">Investments</a> <a
			href="/registration">Sign Up</a> <a href="/login" class="login">Login</a>
		<a href="javascript:void(0);" class="icon" onclick="myFunction()">
			<i class="fa fa-bars"></i>
		</a>
		 <div class="login-container">
            <form action="/login">
                <input type="text" placeholder="Username" name="username">
                <input type="password" id="password" name="password" placeholder="Password" />
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <button type="submit">Login</button>
            </form>
        </div>
	</div>

	<div class="row">
		<div class="flip col-12 col-s-10">
			<span style="color: white;">
				<i class="far fa-heart fa-3x"></i>
			</span>
			<h1>We <span style="color: #61d6a5;">reward</span> you for banking with us, not the other way around!</h1>
			
			<div class="cardBox">
				<div class="flip-card">
					<div class="front" style="background-image: url('/img/personalcheck.png')">

					</div>
					<div class="back">
						<h2>Personal Checking</h2>
						<p>Enroll to get more rewards with your everyday banking.
							Benefits grow as your qualifying balances increase.</p>
						<a href="/user/new">ENROLL</a>
					</div>
				</div>
			</div>
			

			<div class="cardBox">
				<div class="flip-card">
					<div class="front" style="background-image: url('/img/dba.png')">

					</div>
					<div class="back">
						<h2>DBA(Business) Checking</h2>
						<p>
							Fit your business needs - giving you one place to manage all of
							your finances. 
							<br>(3 accounts max per customer)
						</p>
						<a href="/user/new">ENROLL</a>
					</div>
				</div>


			</div>
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