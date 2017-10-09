.class Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;
.super Landroid/os/AsyncTask;
.source "PowerNotiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerNotiDialog;
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

.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDialog;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getLimitBackgoundData()I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->data_powersaving:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDialog;Lcom/android/settings/powersavingmode/PowerNotiDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/powersavingmode/PowerNotiDialog;
    .param p2, "x1"    # Lcom/android/settings/powersavingmode/PowerNotiDialog$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 122
    const-string v4, "PowerNotiDialog"

    const-string v5, "doInBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    aget-object v1, p1, v7

    .line 124
    .local v1, "data_powersaving":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    .line 125
    .local v3, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    invoke-static {v4}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->access$200(Lcom/android/settings/powersavingmode/PowerNotiDialog;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_saving_data_allowed_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "allowedApplist":Ljava/lang/String;
    const/4 v2, 0x0

    .line 131
    .local v2, "mAllowedApplist":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 133
    const-string v4, "PowerNotiDialog"

    const-string v5, "before setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v3, v6}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 136
    const-string v4, "PowerNotiDialog"

    const-string v5, "after setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    invoke-static {v4, v2, v6}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->access$300(Lcom/android/settings/powersavingmode/PowerNotiDialog;[Ljava/lang/String;Z)V

    .line 144
    const-string v4, "PowerNotiDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 148
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    invoke-static {v4, v2, v7}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->access$300(Lcom/android/settings/powersavingmode/PowerNotiDialog;[Ljava/lang/String;Z)V

    .line 153
    const-string v4, "PowerNotiDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    const-string v4, "PowerNotiDialog"

    const-string v5, "before setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v3, v7}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 158
    const-string v4, "PowerNotiDialog"

    const-string v5, "after setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->finish()V

    .line 178
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->data_powersaving:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 196
    :cond_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    const-string v0, "PowerNotiDialog"

    const-string v1, "onPreExecut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 106
    iget v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->data_powersaving:I

    if-ne v0, v3, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    const v2, 0x7f0a1dbc

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 117
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDialog$LimitBackgroundDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDialog;

    const v2, 0x7f0a1dbd

    invoke-virtual {v1, v2}, Lcom/android/settings/powersavingmode/PowerNotiDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
