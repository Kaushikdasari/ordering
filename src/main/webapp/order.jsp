<style>

* {
    margin:0;
    padding:0;
 }
 </style>
<head>
<style>
body {font-family: Arial;}

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

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

</style>
</head>
<link rel="stylesheet" type="text/css" href="common.css"></link>
<div>
	<div id="header" style="height:18%;width:100%">
		<jsp:include page="header.jsp" />
	</div>
	
	<div id="body" style="height:77%;width:100%;overflow:scroll;">
<body>

<div class="tab" style="display:block" align="center">
  <button id="personal"  class="tablinks">Personal Information</button>
  <button id="billing" class="tablinks">Billing Information</button>
  <button id="review" class="tablinks" >Order Review</button>
  <button id="confirm" class="tablinks">Order Confirmation</button>
</div>
<div id="Personal"  style="display:block;padding:20" class="tabcontent">
<div id ="info" >
<p><h2>Personal Info</h2>
<ul><li>Use the form below to enroll in a plan. You'll be able to review your information and make changes before you submit your completed form.</li>
<li>Please contact the plan directly if you need information in another language or format (Braille).</li>
	Fields marked with an asterisk (*) are required
	</p>
</div>
<div id ="info" class="form-style-5">
  <form>
<fieldset>
<legend> Personal Information</legend>

<input type="text" name="field1" placeholder="FirstName *">
<input type="text" name="field1" placeholder="LastName *">
<input type="text" name="field1" placeholder="Date Of Birth*">
<input type="email" name="field2" placeholder="Email *">
<input type="text" name="field1" placeholder="Address Lane1 *">
<input type="text" name="field1" placeholder="Address Lane2 *">
<input type="text" name="field1" placeholder="City*">
<input type="text" name="field1" placeholder="State*">
<input type="text" name="field1" placeholder="zip*">
<p><input type="button" onclick="showbilling()" value="Continue to Billing"  style="font-size:unset" />&nbsp;
<input type="button" onclick="href="http://ec2-18-188-79-5.us-east-2.compute.amazonaws.com:8080/main.jsp"" value="Back To Plans" style="font-size:unset"/></p>
</form>
</div>
</div>

<div id="Billing" style="display:none" class="tabcontent form-style-5 .Personal Information button.active">
<form>
<fieldset>
<legend><span class="number">1</span> Billing Type</legend>
<input type="text" name="field1" placeholder="Debit/CreditCardNo *">
<input type="text" name="field1" placeholder="ExpiryDate*">
<input type="text" name="field1" placeholder="Cvv*">
<legend><span class="number">2</span> Billing Information</legend>
<input type="text" name="field1" placeholder="CardHolderName*">
<input type="email" name="field2" placeholder="CardHolderEmail *">
<input type="text" name="field1" placeholder="CardHolderAddress Lane1 *">
<input type="text" name="field1" placeholder="CardHolderAddress Lane2 *">
<input type="text" name="field1" placeholder="City*">
<input type="text" name="field1" placeholder="State*">
<input type="text" name="field1" placeholder="zip*">
<input type="button" onclick="showreview()" value="ReviewOrder and Pay"style="font-size:unset" />&nbsp;
<input type="button" onclick="showpersonal()" value="Previous"style="font-size:unset" />
</form>
</div>

<div id="Revieworder" style="display:none" class="tabcontent form-style-5 button.active">
 <form>
<fieldset>
<legend><span class="number">1</span> Insurance Type</legend>
<legend><span class="number">2</span> Personal Information</legend>
<legend><span class="number">3</span> Billing Information</legend>
<input type="checkbox" id="mycheck" onclick="checkfunc()">I agree to Terms Of Condition</label>
<div id="term" style="display:none">
<input type="button" onclick="showConfirmOrder()" value="Pay" style="font-size:unset"/>&nbsp;
<input type="button" onclick="showbilling()" value="Previous"style="font-size:unset" />
</div>
</div>
<div id="Confirmorder" style="display:none" class="tabcontent button.active">
 <form>
<fieldset>
<div id="thank " style="height:90%;width:100%" align="center">
<br/>
<br/>
<h1>Thank you For Ur Order</h1>
<br/>
<p>Order Confirmation number is : 308512033<br/>
<br/>
You will receive an email confirmation shortly at@insurance.com<br/>
<br/>
Print Receipt</p>
<div id="plans " class ="form-style-5" style="height:10%;width:100%" align="center">
<input type="button"  onclick="href="http://ec2-18-188-79-5.us-east-2.compute.amazonaws.com:8080/main.jsp""  value="Continue Shopping" style="font-size:unset"/>&nbsp;
<input type="button"  onclick="showplans()" value="Create Account" style="font-size:unset"/>
</form>
</fieldset>
</div>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
function showpersonal()
{
	document.getElementById("Personal").style.display="block";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="none";
}
function showbilling()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="block";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="none";
}
function showreview()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="block";
	document.getElementById("Confirmorder").style.display="none";
}
function showConfirmOrder()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="block";
}
function showplans()
{
	document.getElementById("Personal").style.display="none";
	document.getElementById("Billing").style.display="none";
	document.getElementById("Revieworder").style.display="none";
	document.getElementById("Confirmorder").style.display="none";
	
}
function checkfunc()
{
	var checkBox = document.getElementById("mycheck");
  // Get the output text
    if (checkBox.checked == true){
    term.style.display = "block";
  } else {
    term.style.display = "none";
  }
}
</script>
     
</body>

	</div>
	<div id="footer"  style="height:5%;width:100%">
		<jsp:include page="footer.jsp" />
	</div>
</div> 