
Kayla Cuthbert
11:52 AM (0 minutes ago)
to me, cuthbert091

library(tidyverse)
library(ggplot2)
library(scales)

# Forest Floor palette
ff_primary    <- "#1E3D2A"
ff_secondary  <- "#7A9B6E"
ff_background <- "#F7F4EE"
ff_accent     <- "#C4673A"
ff_text       <- "#2E2E2E"
ff_muted      <- "#A8A89E"

# Eden ggplot2 theme
theme_eden <- function(base_size = 11) {
  theme_minimal(base_size = base_size) +
    theme(
      plot.background  = element_rect(fill = ff_background, color = NA),
      panel.background = element_rect(fill = ff_background, color = NA),
      panel.grid.major = element_line(color = "#D4CFC7", linewidth = 0.4),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_line(color = "#D4CFC7", linewidth = 0.4),
      panel.grid.major.x = element_blank(),
      text             = element_text(color = ff_text),
      plot.title       = element_text(size = 14, face = "bold",
                                      color = ff_primary,
                                      margin = margin(b = 6)),
      plot.subtitle    = element_text(size = 11, color = ff_text,
                                      margin = margin(b = 16)),
      plot.caption     = element_text(size = 9, color = ff_muted,
                                      hjust = 0, margin = margin(t = 12)),
      axis.text        = element_text(size = 10, color = ff_text),
      axis.title       = element_text(size = 11, color = ff_text),
      axis.title.x     = element_text(margin = margin(t = 10)),
      axis.title.y     = element_text(margin = margin(r = 10)),
      legend.position  = "none",
      plot.margin      = margin(20, 20, 20, 20)
    )
}
