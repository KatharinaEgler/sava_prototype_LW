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

const youROnIt = () => {
  const takeBtns = document.querySelectorAll(".wishlistitem-card-button");

  if (takeBtns) {
    takeBtns.forEach((takeBtn) => {
      takeBtn.addEventListener("click", (event) => {
        console.log(document.getElementById("popup-take").innerText);
        event.target.parentElement.style.backgroundColor = "#645959";
        event.target.innerText = "Taken";
        document.getElementById("overlay").style.display = "block";
        document.getElementById("popup-take").style.display= "block";

        setTimeout(() => {
          document.getElementById("overlay").style.display = "none";
          document.getElementById("popup-take").classList.add("fadeOutDown");
        }, 2000);
      });
    });
  }

};


youROnIt();
addEventBtn();
