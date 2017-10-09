.class Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;
.super Landroid/os/AsyncTask;
.source "PowerNotiDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerNotiDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitBgDataTask"
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

.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;


# direct methods
.method private constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getLimitBackgoundData()I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->data_powersaving:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;Lcom/android/settings/powersavingmode/PowerNotiDataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/powersavingmode/PowerNotiDataService;
    .param p2, "x1"    # Lcom/android/settings/powersavingmode/PowerNotiDataService$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDataService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 138
    const-string v8, "PowerNotiDataService.java"

    const-string v9, "doInBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    aget-object v1, p1, v11

    .line 140
    .local v1, "data_powersaving":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$100()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    .line 141
    .local v3, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_allowed_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "allowedApplist":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_service_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "serviceApplist":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-static {v8}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDataService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_data_ristricted_apps"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "restrictApplist":Ljava/lang/String;
    const/4 v2, 0x0

    .line 145
    .local v2, "mAllowedApplist":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 146
    .local v4, "mServiceApplist":[Ljava/lang/String;
    const-string v5, ""

    .line 147
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 149
    const-string v8, "PowerNotiDataService.java"

    const-string v9, "before setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3, v10}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 151
    const-string v8, "PowerNotiDataService.java"

    const-string v9, "after setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v5, "setLimitBackground(true)"

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 155
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 157
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 160
    :cond_0
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-static {v8, v2, v10}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$300(Lcom/android/settings/powersavingmode/PowerNotiDataService;[Ljava/lang/String;Z)V

    .line 161
    const-string v8, "PowerNotiDataService.java"

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

    .line 162
    const-string v8, "PowerNotiDataService.java"

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

    .line 189
    :cond_1
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 166
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 167
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 170
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 172
    :cond_3
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-static {v8, v2, v11}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$300(Lcom/android/settings/powersavingmode/PowerNotiDataService;[Ljava/lang/String;Z)V

    .line 174
    const-string v8, "PowerNotiDataService.java"

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

    .line 175
    const-string v8, "PowerNotiDataService.java"

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

    .line 178
    :cond_4
    const-string v8, "PowerNotiDataService.java"

    const-string v9, "before setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v3, v11}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 180
    const-string v8, "PowerNotiDataService.java"

    const-string v9, "after setLimitBackground"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->finish()V

    .line 207
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->data_powersaving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 225
    :cond_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    const-string v0, "PowerNotiDataService.java"

    const-string v1, "onPreExecut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 121
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 122
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->data_powersaving:I

    if-ne v0, v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    const v2, 0x7f0a1dbc

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 133
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataService;

    const v2, 0x7f0a1dbd

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerNotiDataService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
