# Install a bunch of packages that I frequently use
packageList = read.csv(
    file = 'https://raw.github.com/jhelvy/jhelvyr/master/data/packageList.csv',
    header = FALSE)
install.packages(
    as.character(packageList[,1]),
    repos        = 'https://cloud.r-project.org/',
    dependencies = T)

# Install other packages from github
library('devtools')
install_github('jhelvy/logitr', force = T)
install_github('jhelvy/jhelvyr', force = T)
