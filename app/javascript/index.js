window.addEventListener('load', () => {
  const name = document.getElementById("name");
  if (!name){ return false;}
  name.addEventListener("mousedown", () => {
    name.classList.add("jump");});
  name.addEventListener("animationend", () => {
    name.classList.remove("jump");});
  name.addEventListener("animationcancel", () => {
    name.classList.remove("jump");})
});