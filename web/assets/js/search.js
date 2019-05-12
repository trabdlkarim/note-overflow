/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var searchInput = document.getElementById("top-search-input");
searchInput.addEventListener("keyup", function(event) {
  if (event.keyCode === 13 || event.key ==="Enter") {
   event.preventDefault();
   document.getElementById("top-search-form").submit();
  }
});