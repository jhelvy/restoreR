# Install a bunch of packages that I frequently use
packageList = read.csv(
    file = 'https://raw.github.com/jhelvy/restoreR/master/packageList.csv',
    header = FALSE)
install.packages(
    as.character(packageList[,1]),
    repos        = 'https://cloud.r-project.org/',
    dependencies = T)

# Install other packages from github
library('devtools')
install_github('jhelvy/logitr', force = T)
install_github('jhelvy/jhelvyr', force = T)
install_github('gadenbuie/countdown', force = T)

# Install RStudio themes
install_github('gadenbuie/rsthemes', force = T)
rsthemes::install_rsthemes(include_base16 = TRUE)
