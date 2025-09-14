// Simulación de cámara (luego puedes usar la API real)
document.addEventListener("DOMContentLoaded", function() {
  const video = document.getElementById("video");
  const canvas = document.getElementById("canvas");
  const captureBtn = document.getElementById("captureBtn");
  const logsList = document.getElementById("logsList");
  
  // Simular acceso a la cámara (en un proyecto real usa navigator.mediaDevices.getUserMedia)
  if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
    navigator.mediaDevices.getUserMedia({ video: true })
      .then(function(stream) {
        video.srcObject = stream;
      })
      .catch(function(error) {
        console.error("Error al acceder a la cámara:", error);
        alert("No se pudo acceder a la cámara. Usando simulación.");
        video.src = "https://via.placeholder.com/640x480"; // Placeholder si falla
      });
  }
  
  // Capturar "rostro" (simulado)
  captureBtn.addEventListener("click", function() {
    const context = canvas.getContext("2d");
    context.drawImage(video, 0, 0, 640, 480);
    
    // Simular reconocimiento exitoso
    const now = new Date();
    const timeString = now.toLocaleTimeString();
    const logEntry = document.createElement("li");
    logEntry.textContent = `✅ Entrada registrada a las ${timeString}`;
    logsList.prepend(logEntry);
    
    alert("Rostro reconocido. Entrada permitida.");
  });
});