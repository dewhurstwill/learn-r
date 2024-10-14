ages = c(2,5,3,3,5,9,12,16,59,22,68,1,24)

children = c()
adults = c()

for (age in ages) {
  if (age < 18) {
    children <- c(children, i)
  } else {
    adults <- c(adults, i)
  }
}

print(children)
print(length(children))
print(adults)
print(length(adults))
