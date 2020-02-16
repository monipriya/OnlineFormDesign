// JavaScript source code
function validateCardNumber() {
    var regex = /^ (?: 4[0 - 9]{ 12} (?:[0 - 9]{ 3})?)$/;
    var x = document.getElementById("txtcardNumber");
    if (!x.value.match(regex)) {
        x.focus();
        alert("Card number is invalid");
    }
    else if (x.value == null) {
        x.focus();
        alert("Card number is required");
    }
}

function validateSecurityCode() {
    var x = document.getElementById("txtSecurityCode");
    var regex = /[0 - 9]{ 3}/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Security code is invalid");
    }
}

function validateExpiryMonth() {
    var x = document.getElementById("listMonth");

    if (x.value == null) {
        x.focus();
        alert("Expiry Month is invalid");
    }
}

function validateExpiryYear() {
    var x = document.getElementById("listYear");
    if (x.value == null) {
        x.focus();
        alert("Expiry Year is invalid");
    }
}

function validateName() {
    var x = document.getElementById("txtname");
    var regex = /^[a - zA - Z] + (([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Name is Invalid");
    }
}

function validateAddress() {
    var x = document.getElementById("txtAddress1");
    var regex = /^[a - zA - Z] + (([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Address is invalid");
    }
}

function validatePhoneNo() {
    var x = document.getElementById("txtTelephone");
    var regex = /^[6789]\d{ 9}$/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Phone number is invalid");
    }
}

function validateFax() {
    var x = document.getElementById("txtFax");
    var regex = /^ (\+?\d{ 1,} (\s ?|\-?) \d * (\s ?|\-?) \(?\d{ 2,} \)?(\s ?|\-?) \d{ 3,} \s ?\d{ 3,}) $/;
    if (!x.value.match(regex)) {
        x.focus();
        alert("Fax number is invalid");
    }
}


function validateEmail() {
    var x = document.getElementById("txtEmail");
    var regex = /^\w + ([\.-] ?\w +)*@\w + ([\.-] ?\w +)*(\.\w{ 2,3})+$/;

    if (!x.value.match(regex)) {
        x.focus();
        alert("Email is invalid");
    }
}

function CancelClick() {
    alert("Payment cancelled");
}

function validatePostcode() {
    var postCode = document.getElementById("txtCode");
    var regex = /[0 - 9]{ 6}/;
    if (!postCode.value.match(regex)) {
        result = false;
        postCode.focus();
        alert("Post code is invalid");
    }
    else result = true;
}