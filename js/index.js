    $(document).ready(function () {
        var intputElements = document.getElementsByTagName("INPUT");
        for (var i = 0; i < intputElements.length; i++) {
            intputElements[i].oninvalid = function (e) {
                e.target.setCustomValidity("");
                if (!e.target.validity.valid) {
                    if (e.target.name == "username") {
                        e.target.setCustomValidity("EROR el campo no puede estar vacio");
                    }
                    else {
                        e.target.setCustomValidity("ERROR el campo no debe estar vacio");
                    }
                }
            };
        }
    })
