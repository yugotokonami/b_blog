window.addEventListener('load', () => {
  const userName = document.getElementById("user-name");
  userName.addEventListener("mousedown", () => {
    userName.classList.add("jump");});
  userName.addEventListener("animationend", () => {
    userName.classList.remove("jump");});
  userName.addEventListener("animationcancel", () => {
    userName.classList.remove("jump");})
});