help for chks
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Title

    chks -- Estimation of Linear / Non-linear Zero-Stochastic Frontier Models.

Description

    chks User-written Stata command. Estimation of a non-linear index under sample selection. This is a code under construction for a working paper.

    For more information, visit: https://github.com/timbulwidodostp/chks


Syntax

        chks depvar indepvars [if] [in] [weight] [, indx( varlist) type() estimation() eoption() nonconstant robust maxitera(#) ]


    options               Description
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    Nonlinear Model
      indx(varlist)       contains the varlist that forms the index, excluding one variable (Y1). indx() could be empty, which means it is a linear model rather than an index.

    Functional Form
      type(function)      function may be Cobb-Douglas (cd) or CES (ces)

    Estimation
      estimation(method)  method may be Nonlinear Least Squares (nls), Stochastic Frontier (sf), or Zero-Stochastic Frontier (zsf).

      eoption()            additional estimation specification when estimation method is ZSF. It could be Maximum Likelihood Estimation (ml) or Expectation-Maximization Algorithm (em). EM
                            is the default option.

    SE/Robust
      vce(vcetype)        vcetype may be robust.

    Constant
      noconstant          suppress constant term.

    Optimization
      maxitera(#)         specifies the maximum number of iterations; the default is 500.


Citation

    chks is not an official Stata command.  It is a free contribution to the research community.  Please cite it as such:
        Chancí, L. 2019. chks command. Estimation of linear and non-linear (zero) stochastic frontier models.  Mimeo.


Return values

   Matrices

       r(betas)           Coefficient vector
       e(V)               Variance-covariance matrix


Examples

    import excel "https://raw.githubusercontent.com/timbulwidodostp/chks/main/chks/chks.xlsx", sheet("Sheet1") firstrow clear
    chks Y1 x1 x2, indx(Y2 Y3) es(nls) t(ces) r
    chks Y1 x1 x2, indx(Y2 Y3) es(sf) t(ces) r


References


    Kumbhakar, Parmeter, and Tsionas. 2013.  A zero inefficiency stochastic frontier model.  Journal of Econometrics, 175(1),66-76


Author

    Olah Data Semarang
    WA : +6285227746673 (085227746673)
    Receive Statistical Analysis Data Processing Services Using
    SPSS, AMOS, LISREL, Frontier 4.1, EVIEWS, SMARTPLS, STATA
    DEAP 2.1, ETC

Also see
    Online: help for ml, mata.