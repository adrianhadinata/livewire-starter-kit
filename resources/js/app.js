function applySidebarBehavior() {
    const buttonNavList = document.querySelectorAll('[class*="group/disclosure-button"]');
    buttonNavList.forEach(function (button) {
        button.style.textAlign = "left";
    });

    const buttonNavListItem = document.querySelectorAll('[class*="navlistitem"]');
    buttonNavListItem.forEach(function (button) {
        const divElement = button.querySelector('div');
        if (divElement) {
            divElement.classList.add("text-wrap");
            divElement.classList.remove("whitespace-nowrap");
        }
    });
}

// Jalankan saat pertama kali halaman load
document.addEventListener('DOMContentLoaded', applySidebarBehavior);

// Jalankan ulang setiap kali Livewire navigasi SPA terjadi
document.addEventListener('livewire:navigated', applySidebarBehavior);
