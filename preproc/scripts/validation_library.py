def custom_validation(model,x_train_list,y_train_list,x_val_list,y_val_list,**kwargs):
    n_folds = len(x_train_list)
    #assuming all lists are same length
    loss_list=[]
    for i in range(n_folds):
        model.fit(dropstrings(x_train_list[i]),y_train_list[i],**kwargs)
        preds = model.predict(dropstrings(x_val_list[i]))
        loss = np.sqrt(np.mean((preds - y_val_list[i])**2))
        loss_list.append(loss)
    return(loss_list)