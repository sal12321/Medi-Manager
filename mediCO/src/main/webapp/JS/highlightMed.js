function scrollToMedicine() {
       const input = document.getElementById("pageSearch").value.toLowerCase();
       const rows = document.querySelectorAll("table tbody tr");

       let found = false;
       rows.forEach(row => {
           row.style.backgroundColor = ""; // reset all

           const nameCell = row.cells[1]; // 2nd column = name
           if (nameCell && nameCell.textContent.toLowerCase().startsWith(input) && input !== "") {
               if (!found) {
                   row.scrollIntoView({ behavior: "smooth", block: "center" });
                   row.style.backgroundColor = "#ffff99"; // highlight
                   found = true;
               }
           }
       });
   }