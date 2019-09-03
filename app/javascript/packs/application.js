import "bootstrap";
global.jQuery = jQuery;

const addEventBtn = ()=> {

  const editBtn = document.getElementById("edit-circle-button");
  const cancelBtn = document.getElementById("cancel-popup-create-member");

  if (editBtn){

    editBtn.addEventListener("click", (event) => {
      document.getElementById("popup-create-member").style.display= "block";
      document.getElementById("overlay").style.display = "block";
    });

    cancelBtn.addEventListener("click", (event) => {
      document.getElementById("popup-create-member").style.display= "none";
      document.getElementById("overlay").style.display = "none";
    });
  }
};


addEventBtn();
