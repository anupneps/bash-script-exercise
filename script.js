var x = window.prompt("Enter your age ?");
var order = 'Beer';

if (x > 50) {
    document.write("He's over 50!");

} else if (x > 50 && x > 30) {
    document.write("Middle aged man, who ordered some " + order);
} else
    document.write("It seems you're bit underaged.");