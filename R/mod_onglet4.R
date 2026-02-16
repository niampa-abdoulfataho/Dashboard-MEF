# ============================================
# MODULE ONGLET 4
# ============================================

onglet4_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 4"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet4_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
