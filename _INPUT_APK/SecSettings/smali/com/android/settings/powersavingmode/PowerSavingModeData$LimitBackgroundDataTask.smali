.class Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;
.super Landroid/os/AsyncTask;
.source "PowerSavingModeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitBackgroundDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field data_powersaving:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 341
    const-string v8, "PowerSavingMode2014"

    const-string v9, "doInBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    aget-object v1, p1, v11

    .line 343
    .local v1, "data_powersaving":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$600(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    .line 344
    .local v3, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v8}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_allowed_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "allowedApplist":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v8}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_service_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "serviceApplist":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v8}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_ristricted_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "restrictApplist":Ljava/lang/String;
    const/4 v2, 0x0

    .line 348
    .local v2, "mAllowedApplist":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 349
    .local v4, "mServiceApplist":[Ljava/lang/String;
    const-string v5, ""

    .line 350
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 352
    const-string v8, "PowerSavingMode2014"

    const-string v9, "before setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v3, v10}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 354
    const-string v8, "PowerSavingMode2014"

    const-string v9, "after setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v5, "setLimitBackground(true)"

    .line 357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 358
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 360
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 363
    :cond_0
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v8, v2, v10}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->setUidAllowedForData([Ljava/lang/String;Z)V

    .line 364
    const-string v8, "PowerSavingMode2014"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v8, "PowerSavingMode2014"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mServiceApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 369
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 370
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 373
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 375
    :cond_3
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v8, v2, v11}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->setUidAllowedForData([Ljava/lang/String;Z)V

    .line 377
    const-string v8, "PowerSavingMode2014"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v8, "PowerSavingMode2014"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDataServiceChanged mServiceApplist :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    const-string v8, "PowerSavingMode2014"

    const-string v9, "before setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v3, v11}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 383
    const-string v8, "PowerSavingMode2014"

    const-string v9, "after setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->data_powersaving:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_data_allowed_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "allowedApplist":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_data_service_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "serviceApplist":Ljava/lang/String;
    const-string v2, "PowerSavingMode2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v2, "PowerSavingMode2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataServiceChanged mServiceApplist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 405
    .end local v0    # "allowedApplist":Ljava/lang/String;
    .end local v1    # "serviceApplist":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 325
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 326
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->data_powersaving:I

    if-ne v0, v3, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    const v2, 0x7f0a1dbc

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 336
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    const v2, 0x7f0a1dbd

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
