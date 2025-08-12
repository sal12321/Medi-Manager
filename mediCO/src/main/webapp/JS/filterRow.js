document.getElementById("pageSearch").addEventListener("keyup", function(e) {
    let filter = this.value.toLowerCase();
    let rows = document.querySelectorAll("#medicineTable tr:not(:first-child)");

    rows.forEach(row => {
        let name = row.cells[1].textContent.toLowerCase();
        row.style.display = name.startsWith(filter) ? "" : "none";
    });

    // If ENTER is pressed, open first visible medicine
    if (e.key === "Enter") {
        for (let row of rows) {
            if (row.style.display !== "none") {
                let id = row.getAttribute("data-id");
                window.location.href = "updateStock.jsp?id=" + id;
                break;
            }
        }
    }
});