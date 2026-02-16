# ============================================
# ui.R - Layout principal CORRIGÉ
# Accepte les 7 onglets en tant qu'arguments
# ============================================

app_ui_layout <- function(...) {
  
  # Récupérer tous les arguments passés (les 7 onglets)
  onglets <- list(...)
  
  fluidPage(
    # ✅ Initialiser shinyjs pour les interactions
    shinyjs::useShinyjs(),
    
    tags$head(
      # ✅ CSS personnalisé avec vos couleurs officielles
      tags$link(rel = "stylesheet", href = "css_personnalise.css"),
      
      # Font Awesome pour les icônes
      tags$link(rel = "stylesheet", 
                href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"),
      
      # ================================================
      # ✅ JavaScript optimisé pour la navigation
      # ================================================
      tags$script(HTML("
        /**
         * Fonction pour changer d'onglet
         * @param {string} tabId - ID de l'onglet à afficher
         * @param {element} element - Élément du menu cliqué
         */
        function switchTab(tabId, element) {
          // Masquer tous les onglets
          document.querySelectorAll('.tab-content').forEach(function(el) {
            el.classList.remove('active');
          });
          
          // Afficher l'onglet sélectionné
          var tabElement = document.getElementById(tabId);
          if (tabElement) {
            tabElement.classList.add('active');
          }
          
          // Mettre à jour le menu actif
          document.querySelectorAll('.menu-item').forEach(function(el) {
            el.classList.remove('active');
          });
          
          // Marquer l'élément menu comme actif
          if (element) {
            element.classList.add('active');
          }
        }
        
        /**
         * Initialiser à la fois l'horloge et les onglets
         */
        document.addEventListener('DOMContentLoaded', function() {
          // Mettre à jour l'horloge immédiatement
          updateTime();
          // Puis chaque seconde
          setInterval(updateTime, 1000);
        });
        
        /**
         * Fonction pour mettre à jour l'horloge en temps réel
         */
        function updateTime() {
          var now = new Date();
          var timeStr = now.toLocaleTimeString('fr-FR', {
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit'
          });
          var timeElement = document.getElementById('timestamp_id');
          if (timeElement) {
            timeElement.textContent = timeStr;
          }
        }
      "))
    ),
    
    # ================================================
    # CONTENEUR PRINCIPAL
    # ================================================
    div(class = "layout-container",
        
        # ================================================
        # EN-TÊTE / HEADER
        # ================================================
        div(class = "app-header",
            div(class = "header-left",
                # Logo Burkina Faso
                img(src = "logo.jpg", 
                    class = "header-logo", 
                    alt = "Logo Burkina Faso"),
                
                # Titres
                div(
                  div(class = "header-title", 
                      "Ministère de l'Économie et des Finances"),
                  div(class = "header-sub", 
                      "BURKINA FASO")
                )
            ),
            
            # Droite : Horloge et profil
            div(class = "header-right",
                div(id = "timestamp_id", 
                    class = "header-time", 
                    "00:00:00"),
                HTML("<i class='fa-solid fa-user-circle profile-icon'></i>")
            )
        ),
        
        # ================================================
        # CORPS / BODY
        # ================================================
        div(class = "app-body",
            
            # ================================================
            # MENU LATÉRAL / SIDEBAR
            # ================================================
            div(class = "sidebar",
                div(class = "sidebar-title", "MENU"),
                
                # Onglet 1
                div(class = "menu-item active", 
                    id = "menu_1", 
                    onclick = "switchTab('tab1', this)", 
                    icon("circle"), 
                    "Onglet 1"),
                
                # Onglet 2
                div(class = "menu-item", 
                    id = "menu_2", 
                    onclick = "switchTab('tab2', this)", 
                    icon("circle"), 
                    "Onglet 2"),
                
                # Onglet 3
                div(class = "menu-item", 
                    id = "menu_3", 
                    onclick = "switchTab('tab3', this)", 
                    icon("circle"), 
                    "Onglet 3"),
                
                # Onglet 4
                div(class = "menu-item", 
                    id = "menu_4", 
                    onclick = "switchTab('tab4', this)", 
                    icon("circle"), 
                    "Onglet 4"),
                
                # Onglet 5
                div(class = "menu-item", 
                    id = "menu_5", 
                    onclick = "switchTab('tab5', this)", 
                    icon("circle"), 
                    "Onglet 5"),
                
                # Onglet 6
                div(class = "menu-item", 
                    id = "menu_6", 
                    onclick = "switchTab('tab6', this)", 
                    icon("circle"), 
                    "Onglet 6"),
                
                # Onglet 7
                div(class = "menu-item", 
                    id = "menu_7", 
                    onclick = "switchTab('tab7', this)", 
                    icon("circle"), 
                    "Onglet 7")
            ),
            
            # ================================================
            # ZONE DE CONTENU / CONTENT AREA
            # ================================================
            div(class = "content-area",
                # ✅ Afficher tous les onglets passés en arguments
                onglets
            )
        )
    )
  )
}