cv_vif <-
function(x, tol=1e-30){
    x = as.matrix(x)
    n = nrow(x)
    p = ncol(x)
    #
    cut_off = 0
    if (p <= 2){
      message("At least 3 independent variables are needed (including the intercept in the first column) to carry out the calculations. The code 'plot(cv_vif(x))' or 'cv_vif(x) |> plot()' will fail.")
      cut_off = 1
    } 
    for (i in 2:p){
      if (var(x[,i]) == 0){
        message("There is a constant variable. Delete it before running the code or, if it is the intercept, it must be the first column of the design matrix. The code 'plot(cv_vif(x))' or 'cv_vif(x) |> plot()' will fail.")
        cut_off = 1
      }
    }
    #
    if (det(crossprod(x)) == 0) {
      message("Perfect multicollinearity exists. Modify the design matrix before running the code. The code 'plot(cv_vif(x))' or 'cv_vif(x) |> plot()' will fail.")
      cut_off = 1
    }
    if (det(crossprod(x)) < tol) {
      message("System is computationally singular. Modify the design matrix before running the code. The code 'plot(cv_vif(x))' or 'cv_vif(x) |> plot()' will fail.")
      cut_off = 1
    }
    #
    if (cut_off == 0){
      cvs = CVs(x) # CVs is a multiColl R package function
      fivs = VIF(x) # VIF is a multiColl R package function
      #
      output = data.frame(cvs, fivs)
      row_names = paste("Variable", 2)
      for (i in 3:p){row_names = c(row_names, paste("Variable", i))}
      rownames(output) = row_names
      colnames(output) = c("CV", "VIF")
      class(output) <- c("cv_vif", class(output))
      return(output)    
    } else {
      set.seed(321)
      # Boca (arco superior del círculo con ruido, muy abajo)
        theta <- seq(pi/4, 3*pi/4, length.out = 400)  # arco de arriba (boca triste)
        r <- 1
        x_mouth <- r * cos(theta) + rnorm(length(theta), sd = 0.04)
        y_mouth <- r * sin(theta) - 1.5 + rnorm(length(theta), sd = 0.04)  
      # Ojo izquierdo
        x_left  <- rnorm(100, mean = -0.45, sd = 0.06)
        y_left  <- rnorm(100, mean =  0.35, sd = 0.06)
      # Ojo derecho
        x_right <- rnorm(100, mean =  0.45, sd = 0.06)
        y_right <- rnorm(100, mean =  0.35, sd = 0.06)
      # Concatenamos todos los puntos
        CVs <- c(x_mouth, x_left, x_right, 0, 0)
        FIVs <- c(y_mouth, y_left, y_right, 1.5, -1.5)
      output = data.frame(CVs, FIVs)
      class(output) <- c("cv_vif_error", class(output))
      return(invisible(output))
    }
}
