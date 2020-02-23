#!/usr/bin/env Rscript

if (require("SPAtest")) {
  if (packageVersion("SPAtest") != "3.0.0") {
    # Remove SPAtest
    remove.packages("SPAtest")
    # Install devtools
    install.packages("devtools", repos = "https://cloud.r-project.org")
    # Install old SPAtest
    require(devtools)
    install_version("SPAtest", version = "3.0.0", repos = "http://cloud.r-project.org")
  }
}
