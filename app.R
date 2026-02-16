# ============================================
# app.R - Application Shiny Principale CORRIGÉE
# Ministère de l'Économie et des Finances
# Burkina Faso
# ============================================

library(shiny)
library(shinyjs)

# ================================================
# CHARGER LES MODULES
# ================================================

source("R/mod_onglet1.R")
source("R/mod_onglet2.R")
source("R/mod_onglet3.R")
source("R/mod_onglet4.R")
source("R/mod_onglet5.R")
source("R/mod_onglet6.R")
source("R/mod_onglet7.R")

# ================================================
# CHARGER LE LAYOUT UI
# ================================================

source("R/ui.R")

# ================================================
# CONSTRUIRE L'INTERFACE UTILISATEUR
# ================================================

ui <- app_ui_layout(
  # Onglet 1 (actif par défaut)
  div(id = "tab1", class = "tab-content active", onglet1_ui("onglet1")),
  
  # Onglet 2
  div(id = "tab2", class = "tab-content", onglet2_ui("onglet2")),
  
  # Onglet 3
  div(id = "tab3", class = "tab-content", onglet3_ui("onglet3")),
  
  # Onglet 4
  div(id = "tab4", class = "tab-content", onglet4_ui("onglet4")),
  
  # Onglet 5
  div(id = "tab5", class = "tab-content", onglet5_ui("onglet5")),
  
  # Onglet 6
  div(id = "tab6", class = "tab-content", onglet6_ui("onglet6")),
  
  # Onglet 7
  div(id = "tab7", class = "tab-content", onglet7_ui("onglet7"))
)

# ================================================
# LOGIQUE SERVEUR
# ================================================

server <- function(input, output, session) {
  
  # ✅ Initialiser shinyjs
  shinyjs::useShinyjs()
  
  # ================================================
  # CHARGER LES SERVEURS DES MODULES
  # ================================================
  
  onglet1_server("onglet1")
  onglet2_server("onglet2")
  onglet3_server("onglet3")
  onglet4_server("onglet4")
  onglet5_server("onglet5")
  onglet6_server("onglet6")
  onglet7_server("onglet7")
}

# ================================================
# LANCER L'APPLICATION
# ================================================

shinyApp(ui, server)