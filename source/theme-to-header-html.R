theme_to_header_html <- function(theme){
	css_file = if (file.exists(theme)) theme else {
		system.file("themes", sprintf("%s.css", theme), package = "knitr")
	}
	# css_knitr = system.file('themes', '.knitr.css', package = 'knitr')
	css_knitr <- '~/Desktop/R_Projects/knitr/inst/themes/.knitr.css'
	stringr::str_c(c(
		'<style type="text/css">', 
		readLines(css_knitr),
		readLines(css_file), 
		'</style>'), 
				collapse = '\n')
}
