#modularised in preproc_1.R
train1 <- merge(items0,item_cats0,by='item_category_id') %>% 
    merge(train0,by='item_id') %>% 
    merge(shops0,by='shop_id')

test1 <- merge(items0,item_cats0,by='item_category_id') %>% 
    merge(test0,by='item_id') %>% 
    merge(shops0,by='shop_id')

write.csv(train1,'gen_data/train1.csv',row.names = FALSE)

write.csv(test1,'gen_data/test1.csv',row.names=FALSE)




#dont include all, you just end up with rows containing all Nans except for item_id and item_category_id
#d_all <- merge(items0,item_cats0,by='item_category_id',all=T) %>% 
#    merge(train0,by='item_id',all=T) %>% 
#    merge(shops0,by='shop_id',all=T)




#items1 = select(items0,-item_name)
#item_cats1 = select(item_cats0,-item_category_name)
#shops1 = select(shops0,-shop_name)
#train1 = select(train0,)

