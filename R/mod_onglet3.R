# ============================================
# MODULE ONGLET 3
# ============================================

onglet3_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 3"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet3_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
