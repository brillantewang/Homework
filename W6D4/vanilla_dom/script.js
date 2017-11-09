document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  document.querySelectorAll("form")[0].addEventListener("submit", (e) => {
    e.preventDefault();

    const input = document.getElementsByClassName("favorite-input")[0];
    const value = input.value;
    input.value = "";

    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = value;

    ul.appendChild(li);
  })


  // adding new photos

  // --- your code here!
  const toggleButton = document.getElementsByClassName("photo-show-button")[0];

  toggleButton.addEventListener("click", event => {
    const form = document.getElementsByClassName("photo-form-container")[0];

    if (form.className.includes("hidden")) {
      form.className = "photo-form-container";
    } else {
      form.className = "photo-form-container hidden";
    }
  });

  const imageForm = document.getElementsByClassName("photo-form-container")[0];

  imageForm.addEventListener("submit", event => {
    debugger;
    event.preventDefault();

    const input = document.getElementsByClassName("photo-url-input")[0];
    const url = input.value;
    input.value = "";

    const ul = document.getElementsByClassName("dog-photos")[0];
    const li = document.createElement("li");
    const img = document.createElement("img");

    img.src = url;
    li.appendChild(img);
    ul.appendChild(li);
  })

});
