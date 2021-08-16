if(!knitr:::is_html_output())
{
  wemoji = function(value){
    return (paste0('\\emoji{',gsub('_','-', value),'}'))
  }
}else{
  wemoji = function(value){
    return (emo::ji(value))
  }
}