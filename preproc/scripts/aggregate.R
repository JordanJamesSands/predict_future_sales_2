#a <- group_by(train1,date_block_num,shop_id,item_id) %>% summarise(sales = sum(item_cnt_day))
#group all data other than item_cnt_day and item_price
train2 <- group_by(train1,date_block_num,shop_id,item_id,item_category_id,shop_name,item_name,item_category_name) %>% summarise(sales = sum(item_cnt_day))
train2$sales <- ifelse(train2$sales<0,0,train2$sales)
train2$sales <- ifelse(train2$sales>20,20,train2$sales)

write.csv(train2,'gen_data/train2.csv',row.names=FALSE)




