<style>
* {
	margin: 0;
	padding: 0;
}
</style>
<head>
<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	border: 1px solid white;
	background-color: inherit;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: #f4f7f8;
	float: middle;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 20px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #1abc9c;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #1abc9c;
}

#personal #billing #review #confirm button.active /current{class ="ui
	active button";
	
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>
</head>
<link rel="stylesheet" type="text/css"
	href="http://ec2-18-188-27-184.us-east-2.compute.amazonaws.com:8080/common.css"></link>
<div>
	<div id="header" style="height: 18%; width: 100%">
		<iframe
			src="http://ec2-18-188-27-184.us-east-2.compute.amazonaws.com:8080/header.jsp"
			width="100%" height="100%"></iframe>
	</div>

	<div id="body" style="height: 77%; width: 100%; overflow: scroll;">
		<body>

			<div class="tab" style="display: block" align="center">
				<button id="personal" class="ui active button">Personal
					Information</button>
				<button id="billing">Billing Information</button>
				<button id="review">Order Review</button>
				<button id="confirmation">Order Confirmation</button>
			</div>
			<div id="Personal" style="display: block; padding: 20"
				class="tabcontent">
				<div id="info">
					<p>
					<h2>Personal Info</h2>
					<ul>
						<li>Use the form below to enroll in a plan. You'll be able to
							review your information and make changes before you submit your
							completed form.</li>
						<li>Please contact the plan directly if you need information
							in another language or format (Braille).</li> Fields marked with an
						asterisk (*) are required
					</ul>
					</p>
				</div>
				<div id="info" class="form-style-5">
					<form action="personalInfo">
						<fieldset>
							<legend> Personal Information</legend>

							<input type="text" name="firstName" placeholder="FirstName *">
							<input type="text" name="lastName" placeholder="LastName *">
							<input type="text"
								pattern='(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d'
								name="dob" placeholder="Date Of Birth* (Format: MM/DD/YYYY)">
							<input type="email" name="email" placeholder="Email *"> <input
								type="text" pattern='[\+]\d{2}[\(]\d{2}[\)]\d{4}[\-]\d{4}'
								name="phoneNo" placeholder="PhoneNo* (Format: +1(999)-999-9999)">
							<input type="text" name="address1" placeholder="Address Lane1 *">
							<input type="text" name="address2" placeholder="Address Lane2 *">
							<input type="text" name="city" placeholder="City*"> <input
								type="text" name="state" placeholder="State*"> <input
								type="text" name="zip" placeholder="Zip*">
							<p>
								<input type="button" onclick="showbilling()"
									value="Continue to Billing" style="font-size: unset" />&nbsp;
								<input type="button"
									onclick="location.href='http://ec2-18-188-79-5.us-east-2.compute.amazonaws.com:8080/main.jsp';"
									value="Back To Plans" style="font-size: unset" />
							</p>
						</fieldset>
					</form>
				</div>
			</div>

			<div id="Billing" style="display: none" class="form-style-5">
				<form action="billing">
					<fieldset>
						<legend>
							<span class="number">1</span> Billing Type
						</legend>
						<input type="text" pattern='[0-9]{13,16}' name="cardNo"
							placeholder="Debit/CreditCardNo *"> <input type="text"
							pattern='^((0[1-9])|(1[0-2]))/([0-9]{4})$' name="expiryDate"
							placeholder="ExpiryDate* (Format: MM/YYYY)"> <input
							type="text" pattern='^[0-9]{3,4}$' name="cvv" placeholder="Cvv*">
						<legend>
							<span class="number">2</span> Billing Information
						</legend>
						<input type="text" name="nameOnCard" placeholder="CardHolderName*">
						<input type="email" name="billingEmail"
							placeholder="CardHolderEmail *"> <input type="text"
							name="billingAddress1" placeholder="CardHolderAddress Lane1 *">
						<input type="text" name="billingAddress2"
							placeholder="CardHolderAddress Lane2 *"> <input
							type="text" name="billingCity" placeholder="City*"> <input
							type="text" name="billingState" placeholder="State*"> <input
							type="text" name="billingZip" placeholder="zip*"> <input
							type="button" onclick="showreview()" value="ReviewOrder and Pay"
							style="font-size: unset" />&nbsp; <input type="button"
							onclick="showpersonal()" value="Previous"
							style="font-size: unset" />
					</fieldset>
				</form>
			</div>

			<div id="Revieworder" style="display: none"
				class=" form-style-5 button.active">
				<form action="review">
					<fieldset>
						<legend>
							<span class="number">1</span> Insurance Type
						</legend>

						<legend>
							<span class="number">2</span> Personal Information
						</legend>

						<legend>
							<span class="number">3</span> Billing Information
						</legend>
						<input type="checkbox" id="mycheck" onclick="checkfunc()">I
						agree to Terms Of Condition</label>
						<div id="term" style="display: none">
							<input type="button" onclick="showConfirmOrder()" value="Pay"
								style="font-size: unset" />&nbsp; <input type="button"
								onclick="showbilling()" value="Previous"
								style="font-size: unset" />
						</div>
					</fieldset>
				</form>
			</div>
			<div id="Confirmorder" style="display: none"
				class="tabcontent button.active">
				<form>
					<fieldset>
						<div id="thank " style="height: 50%; width: 100%" align="center">
							<br /> <br />
							<h1>Thank you For Ur Order</h1>
							<br />
							<p>
								Order Confirmation number is : 308512033<br /> <br /> You will
								receive an email confirmation shortly at@insurance.com<br /> <br />
								Print Receipt
							</p>
						</div>
						<div id="plans " class="form-style-5" align="center">
							<input type="button"
								onclick="location.href='http://ec2-18-188-79-5.us-east-2.compute.amazonaws.com:8080/main.jsp';"
								value="Continue Shopping" style="font-size: unset" />&nbsp; <input
								type="button"
								onclick="location.href='http://ec2-18-188-27-184.us-east-2.compute.amazonaws.com:8080/uneego.jsp';"
								value="Create Account" style="font-size: unset" />
						</div>
					</fieldset>
				</form>
			</div>
			<script>
				function openCity(id) {

					id.className += " active";
				}
				function showpersonal() {
					document.getElementById("Personal").style.display = "block";
					openCity(personal);
					document.getElementById("Billing").style.display = "none";
					document.getElementById("Revieworder").style.display = "none";
					document.getElementById("Confirmorder").style.display = "none";
				}
				function showbilling() {
					document.getElementById("Personal").style.display = "none";
					document.getElementById("Billing").style.display = "block";
					openCity(billing);
					document.getElementById("Revieworder").style.display = "none";
					document.getElementById("Confirmorder").style.display = "none";
				}
				function showreview() {
					document.getElementById("Personal").style.display = "none";
					document.getElementById("Billing").style.display = "none";
					document.getElementById("Revieworder").style.display = "block";
					openCity(review);
					document.getElementById("Confirmorder").style.display = "none";
				}
				function showConfirmOrder() {
					document.getElementById("Personal").style.display = "none";
					document.getElementById("Billing").style.display = "none";
					document.getElementById("Revieworder").style.display = "none";
					document.getElementById("Confirmorder").style.display = "block";
					openCity(confirmation);
				}

				function checkfunc() {
					var checkBox = document.getElementById("mycheck");
					// Get the output text
					if (checkBox.checked == true) {
						term.style.display = "block";
					} else {
						term.style.display = "none";
					}

				}
			</script>

		</body>

	</div>
	<div id="footer" style="height: 5%; width: 100%">
		<iframe
			src="http://ec2-18-188-27-184.us-east-2.compute.amazonaws.com:8080/footer.jsp"
			width="100%" height="100%"></iframe>
	</div>
</div>
