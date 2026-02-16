# ============================================
# MODULE ONGLET 1
# ============================================

onglet1_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 1"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet1_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
