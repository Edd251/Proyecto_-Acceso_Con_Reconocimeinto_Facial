// Login: Redirección al dashboard 
document.getElementById("loginForm").addEventListener("submit", function(e) {
  e.preventDefault();
  const username = document.getElementById("username").value;
  const password = document.getElementById("password").value;
  
  // Validación simple solo simulacion 
  if (username === "admin" && password === "admin123") {
    window.location.href = "dashboard.html";
  } else {
    alert("Usuario o contraseña incorrectos");
  }
});

// Logout: Volver al login
if (document.getElementById("logoutBtn")) {
  document.getElementById("logoutBtn").addEventListener("click", function() {
    window.location.href = "index.html";
  });
}
