function hello() {
    return "Hello, World"
}

const matches = document.querySelectorAll("p");
console.log(matches)

let size = 1;
setInterval(() => {
    size += 1
    matches[0].style.fontSize = size + 'px';
}, 100)