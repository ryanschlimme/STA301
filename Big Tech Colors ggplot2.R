### ggplot2 Big Tech Color Palettes ###

# This document defines two new functions which define color palets to be used
# in ggplot2 for data visualization. It uses the existing hex code color palets
# of a selection of existing big tech companies.

# Students may use scale_tech_colors_d to assign colors to discrete variables
# and scale_tech_colors_c to assign colors to continuous variables.

tech_colors = list(
  google = c("#4285F4", "#DB4437", "#F4B400", "#0F9D58"),
  amazon = c("#FF9900", "#000000"),
  apple = c("#A3AAAE", "#000000", "#F9F6EF"),
  facebook = c("#4267B2", "#898F9C", "#000000"),
  insta = c("#405DE6", "#5B51D8", "#833AB4", "#C13584", "#E1306C", 
                "#FD1D1D","#F56040", "#F77737", "#FCAF45", "#FFDC80"),
  lyft = c("#FF00BF", "#11111F", "#F9F6EF"),
  microsoft = c("#F25022", "#7FBA00", "#00A4EF", "FFB900", "737373"),
  netflix = c("#E50914", "#FFFFFF"),
  slack = c("#36C5F0", "#2EB67D", "#E01E5A", "ECB22E"),
  snapchat = c("#FFFC00", "#000000", "FFFFFF"),
  microsoft = c("#1DA1F2", "#14171A", "#657786", "AAB8C2", "E1E8ED", 
                    "#F5F8FA"),
  netflix = c("#000000", "#FFFFFF"),
  youtube = c("#FF0000", "#282828")
)

tech_palettes = function(name, n, all_palettes = tech_colors) {
  palette = all_palettes[[name]]
  if (missing(n)) {
    n = length(palette)
  }
  out = discrete = palette[1:n]
  structure(out, name = name, class = "palette")
}

scale_tech_colors_d = function(name) {
  ggplot2::scale_color_manual(values = tech_palettes(name))
}

scale_tech_colors_c = function(name) {
  ggplot2::scale_color_gradientn(colors = tech_palettes(name))
}