#doing validation myself
hist(train2$date_block_num)
INITIAL_END <- 20
#train for first 20 months initially, validate on next month, then train 21 months etc.

train_list <- list()
validation_list <- list()

for(final_train_month in (INITIAL_END):33) {
    train_bool <- train2$date_block_num<=final_train_month
    validation_bool <- train2$date_block_num==(final_train_month+1)
    
    train_list[[length(train_list)+1]] <- train_bool
    validation_list[[length(validation_list)+1]] <- validation_bool
}

