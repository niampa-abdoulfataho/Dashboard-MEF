# ============================================
# MODULE ONGLET 7
# ============================================

onglet7_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    h2("Onglet 7"),
    div(
      class = "card",
      p("Contenu à venir…")
    )
  )
}

onglet7_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Logique serveur à ajouter
  })
}
