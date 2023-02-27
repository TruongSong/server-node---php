const nameEle = document.getElementById('name');
const emailEle = document.getElementById('email');
const phoneEle = document.getElementById('phone');
const titleEle = document.getElementById('title');
const contentEle = document.getElementById('content')

const btnSend = document.getElementById('btn_send');
const inputEles = document.querySelectorAll('.input_row');

// btnSend.addEventListener('click', function () {
//     Array.from(inputEles).map((ele) =>
//         ele.classList.remove('success', 'error')
//     );
//     let isValid = checkValidate();

//     if (isValid) {
//         alert('Gửi thông tin thành công');
//     }
// });

function checkValidate() {
    let nameValue = nameEle.value;
    let emailValue = emailEle.value;
    let phoneValue = phoneEle.value;
    let titleValue = titleEle.value;
    let contentValue = contentEle.value;

    let isCheck = true;

    if (nameValue == '') {
        setError(nameEle, 'Họ và Tên không được để trống');
        isCheck = false;
    } else {
        setSuccess(nameEle);
    }

    if (emailValue == '') {
        setError(emailEle, 'Email không được để trống');
        isCheck = false;
    } else if (!isEmail(emailValue)) {
        setError(emailEle, 'Email không đúng định dạng');
        isCheck = false;
    } else {
        setSuccess(emailEle);
    }

    if (phoneValue == '') {
        setError(phoneEle, 'Số điện thoại không được để trống');
        isCheck = false;
    } else if (!isPhone(phoneValue)) {
        setError(phoneEle, 'Số điện thoại không đúng định dạng');
        isCheck = false;
    } else {
        setSuccess(phoneEle);
    }

    if (titleValue == '') {
        setError(titleEle, 'Tiêu Đề không được để trống');
        isCheck = false;
    } else {
        setSuccess(titleEle);
    }

    if (contentValue == '') {
        setError(contentEle, 'Nội Dung không được để trống');
        isCheck = false;
    } else {
        setSuccess(contentEle);
    }

    return isCheck;
}

function setSuccess(ele) {
    ele.parentNode.classList.add('success');
}

function setError(ele, message) {
    let parentEle = ele.parentNode;
    parentEle.classList.add('error');
    parentEle.querySelector('small').innerText = message;
}

function isEmail(email) {
    return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(
        email
    );
}

function isPhone(number) {
    return /(84|0[3|5|7|8|9])+([0-9]{8})\b/.test(number);
}