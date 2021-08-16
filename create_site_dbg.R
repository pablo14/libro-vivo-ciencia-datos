create_book <- function(type)
{
  fn="libro-vivo-ciencia-datos.Rmd"
  if (file.exists(fn)) file.remove(fn)
  rmarkdown::clean_site()

  if(type=='pdf')
  {
    rmarkdown::render_site(output_format =
                             bookdown::pdf_book(template='template.tex',
                                                latex_engine = "pdflatex",
                                                toc_unnumbered=F));beepr::beep()
    beepr::beep()
  } else if(type=='html'){
    rmarkdown::render_site(output_format = 'bookdown::gitbook',
                           encoding = 'UTF-8')
    beepr::beep()
  } else {
    print('nope')
    }
}

## Creating the PDF
beepr::beep_on_error(create_book('pdf'))
## Creating the HTML
beepr::beep_on_error(create_book('html'))

## To create thhe epub, use the Build Book icon on RStudio.
rmarkdown::render_site(output_format = 'bookdown::epub_book', encoding = 'UTF-8');beepr::beep()
