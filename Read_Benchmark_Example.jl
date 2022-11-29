## Example for reading a benchmark problem
using JLD2
Ns = 64     # Number of Subproblems
nb = 3      # Number of dual variables/ System-wide constraitns
R  = 5      # Problem instance number
Case = "QP" # Problem Class (Available: QP, MIQP, Conv)
## For MIQP Problems
# For each subproblem the odd variables (x[1], x[3], x[5]) are continuous, while the even variables (x[2], x[4]) are discrete
##
Filename = string(dirname(@__FILE__),"\\",Case,"\\",Case,"_Ns_",Ns,"_nb_",nb,"_R_",R,".jld2")
Parameters =  FileIO.load(Filename)
