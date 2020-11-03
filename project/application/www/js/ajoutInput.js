let select = document.getElementById("nbrpage");
let select2 = document.getElementById("siOui");
let label = document.getElementById("labelOui");

function removeAllChildNodes(parent) {
    while (parent.firstChild) {
        parent.removeChild(parent.firstChild);
    }
}

function toggle() {
    let selectedOpt = select.options[select.selectedIndex].value;
    removeAllChildNodes(select2)
    if (selectedOpt === "oui") {
        for (let i = 1; i <= 10; i++) {
            let opt = document.createElement('option')
            let text = document.createTextNode(i)
            opt.appendChild(text)
            opt.value = i
            select2.style.display = "inline-block";
            label.style.display = "inline-block";
            select2.appendChild(opt)
        }
    } else {
        select2.style.display = "none";
        label.style.display = "none";
    }
}

toggle()

select.addEventListener("click", toggle);