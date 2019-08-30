import "bootstrap";
global.jQuery = jQuery

const edit = document.querySelector(".add-members-form");
edit.style.display = "none";
const edit_btn = document.querySelector("#edit-circle-button")

edit_btn.addEventListener("click", (event) => {
  event.preventDefault()
  edit.style.display = "flex";
});
