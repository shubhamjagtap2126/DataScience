
# main idea: sorting and merging data.frames

# Need a dataframe to play with
data("ChickWeight") # a built-in dataset

# data.frames: order -------------------------------------------------------
ChickWeight$weight # produces unsorted list of "weight" values
sort(ChickWeight$weight) # sorts a vector
order(ChickWeight$weight) # What is this? answer: sorted row numbers - not values
ChickWeight[196,] #lists the observation with the smallest weight
ChickWeight[order(ChickWeight$weight),] # comma because [ row - comma - column ]

# data.frames: merge -------------------------------------------------------
# first, create two data.frames
chick.one <- ChickWeight[ChickWeight$Chick == 1,]
chick.two <- ChickWeight[ChickWeight$Chick == 2,]
View(chick.one)
View(chick.two)

# merge is like an SQL join - think horizontal combination
# let's compare the weight gain of chick one vs chick two
match.time.obs <- merge(chick.one,chick.two,by="Time")
View(match.time.obs)

# another example. Add names to the chicks using "by"
source("chicknames.R") # builds a data.frame with ranked names
chicks_names <- merge(ChickWeight,chicknames) # oops! merge is confused, so does an sql join all
chicks_names <- merge(ChickWeight,chicknames,by.x="Chick",by.y = "rank")
