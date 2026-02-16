/**
 * ============================================
 * CUSTOM.JS - Scripts personnalisés
 * Application Shiny - Ministère Économie Finances
 * ============================================
 */

/**
 * Fonction pour changer d'onglet
 * @param {string} tabId - ID de l'onglet à afficher
 * @param {HTMLElement} element - Élément du menu cliqué
 */
function switchTab(tabId, element) {
  // Masquer tous les onglets
  const tabs = document.querySelectorAll('.tab-content');
  tabs.forEach(function(tab) {
    tab.classList.remove('active');
  });
  
  // Afficher l'onglet sélectionné
  const activeTab = document.getElementById(tabId);
  if (activeTab) {
    activeTab.classList.add('active');
  }
  
  // Retirer la classe active de tous les items du menu
  const menuItems = document.querySelectorAll('.menu-item');
  menuItems.forEach(function(item) {
    item.classList.remove('active');
  });
  
  // Ajouter la classe active au bouton cliqué
  if (element) {
    element.classList.add('active');
  }
}

/**
 * Fonction pour mettre à jour l'horloge en temps réel
 */
function updateTime() {
  const now = new Date();
  
  // Format français HH:MM:SS
  const timeStr = now.toLocaleTimeString('fr-FR', {
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit'
  });
  
  // Mettre à jour l'élément horloge
  const timeElement = document.getElementById('timestamp_id');
  if (timeElement) {
    timeElement.textContent = timeStr;
  }
}

/**
 * Initialisation au chargement de la page
 */
document.addEventListener('DOMContentLoaded', function() {
  // Afficher l'heure immédiatement
  updateTime();
  
  // Mettre à jour chaque seconde
  setInterval(updateTime, 1000);
  
  // Log pour vérifier l'initialisation
  console.log('Application initialisée avec succès');
});

/**
 * Gestion des erreurs globales
 */
window.addEventListener('error', function(event) {
  console.error('Erreur détectée:', event.error);
});