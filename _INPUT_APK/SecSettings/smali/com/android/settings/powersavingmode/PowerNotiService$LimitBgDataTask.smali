.class Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;
.super Landroid/os/AsyncTask;
.source "PowerNotiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerNotiService;
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
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerNotiService;


# direct methods
.method private constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiService;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiService;Lcom/android/settings/powersavingmode/PowerNotiService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/powersavingmode/PowerNotiService;
    .param p2, "x1"    # Lcom/android/settings/powersavingmode/PowerNotiService$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;-><init>(Lcom/android/settings/powersavingmode/PowerNotiService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 54
    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "doInBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    aget-object v1, p1, v7

    .line 56
    .local v1, "data_powersaving":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-virtual {v4}, Lcom/android/settings/powersavingmode/PowerNotiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    .line 57
    .local v3, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-virtual {v4}, Lcom/android/settings/powersavingmode/PowerNotiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_saving_data_allowed_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "allowedApplist":Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "mAllowedApplist":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 65
    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "before setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v3, v6}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 67
    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "after setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-static {v4, v2, v6}, Lcom/android/settings/powersavingmode/PowerNotiService;->access$100(Lcom/android/settings/powersavingmode/PowerNotiService;[Ljava/lang/String;Z)V

    .line 77
    const-string v4, "Powersaving/PowerNotiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 81
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 82
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-static {v4, v2, v7}, Lcom/android/settings/powersavingmode/PowerNotiService;->access$100(Lcom/android/settings/powersavingmode/PowerNotiService;[Ljava/lang/String;Z)V

    .line 89
    const-string v4, "Powersaving/PowerNotiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataServiceChanged mAllowedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_2
    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "before setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v3, v7}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 95
    const-string v4, "Powersaving/PowerNotiService"

    const-string v5, "after setLimitBackground"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "ununsed"    # Ljava/lang/Void;

    .prologue
    .line 102
    const-string v2, "Powersaving/PowerNotiService"

    const-string v3, "onPostExecute"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "data_powersaving":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.POWERSAVING_DATA_SERVICE_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiService$LimitBgDataTask;->this$0:Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-virtual {v2, v1}, Lcom/android/settings/powersavingmode/PowerNotiService;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "Powersaving/PowerNotiService"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
