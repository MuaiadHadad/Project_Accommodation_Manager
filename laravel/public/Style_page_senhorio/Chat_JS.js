let title = document.querySelectorAll(".chat-list-header");
let totalHeight = 0;

for(let i = 0; i < title.length; i++){
    title[i].addEventListener("click", function(){
        let result = this.nextElementSibling;
        let activeSibling = this.nextElementSibling.classList.contains('active');
        this.classList.toggle('active');
        result.classList.toggle("active");
        let currentHeight = 0; // Fixed variable name to avoid shadowing
        if(!activeSibling) {
            for(let j = 0; j < result.children.length; j++) { // Fixed variable name to avoid shadowing
                currentHeight = currentHeight + result.children[j].scrollHeight + 40;
            }
        } else {
            currentHeight = 0;
        }
        result.style.maxHeight = currentHeight + "px";
    });
}

const themeColors = document.querySelectorAll('.theme-color');

themeColors.forEach(themeColor => {
    themeColor.addEventListener('click', (e) => {
        themeColors.forEach(c => c.classList.remove('active'));
        const theme = themeColor.getAttribute('data-color');
        document.body.setAttribute('data-theme', theme);
        themeColor.classList.add('active');
    });
});
document.getElementById("searchInput").addEventListener("input", function() {
    var input, filter, ul, li, name, i, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    ul = document.querySelector('.chat-list');
    li = ul.getElementsByTagName('li');

    for (i = 0; i < li.length; i++) {
        name = li[i].querySelector('.name');
        if (name) {
            txtValue = name.textContent || name.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = '';
            } else {
                li[i].style.display = 'none';
            }
        }
    }
});
