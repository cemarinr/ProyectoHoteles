function increment(id) {
    let input = document.getElementById(id);
    let value = parseInt(input.value);
    if (value < 10) { 
        value++;
        input.value = value;
    }
}

function decrement(id) {
    let input = document.getElementById(id);
    let value = parseInt(input.value);
    if (value > 0) { 
        value--;
        input.value = value;
    }
}
