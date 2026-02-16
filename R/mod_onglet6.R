# ============================================
# MODULE ONGLET 6
# ============================================

onglet6_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 6"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet6_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
