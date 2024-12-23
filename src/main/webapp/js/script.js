function idCheck() {
    fetch("idCheck.jsp?id=" + document.querySelector("#id").value)
        .then(response => response.text())
        .then(result => {
            if (result.trim() === "true") {
                document.querySelector("#joinbtn").disabled = false;
                alert("아이디 사용 가능");
            } else {
                document.querySelector("#joinbtn").disabled = true;
                alert("아이디 중복");
            }
        })
        .catch(error => {
            console.error("Error:", error);
        });
}
