# ============================================
# MODULE ONGLET 5
# ============================================

onglet5_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 5"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet5_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
