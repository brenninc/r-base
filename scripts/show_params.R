args <- commandArgs(TRUE)
print(paste("args:", args))
for(i in 1:length(args)){
  eval(parse(text=args[[i]]))
}
if (exists("a")){
    print(paste("a:", a))
} else {
    print("a is undefined")
}
if (exists("b")){
    print(paste("b:", b))
} else {
    print("a is undefined")
}
