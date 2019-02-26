#a <- group_by(train1,date_block_num,shop_id,item_id) %>% summarise(sales = sum(item_cnt_day))
#group all data other than item_cnt_day and item_price

library(dplyr)
train1 <- read.csv('gen_data/train1.csv')

train2 <- group_by(train1,date_block_num,shop_id,item_id,item_category_id,shop_name,item_name,item_category_name) %>% summarise(item_cnt_month = sum(item_cnt_day))
train2$item_cnt_month <- ifelse(train2$item_cnt_month<0,0,train2$item_cnt_month)
train2$item_cnt_month <- ifelse(train2$item_cnt_month>20,20,train2$item_cnt_month)

write.csv(train2,'gen_data/train2.csv',row.names=FALSE)




