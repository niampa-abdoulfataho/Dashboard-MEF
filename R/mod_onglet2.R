# ============================================
# MODULE ONGLET 2
# ============================================

onglet2_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 2"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet2_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
