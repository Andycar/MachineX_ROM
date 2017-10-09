.class public Lcom/android/settings/accounts/SnsAccountManager;
.super Ljava/lang/Object;
.source "SnsAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/settings/accounts/SnsAccountManager;


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mQueryFailTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accounts/SnsAccountManager;->mInstance:Lcom/android/settings/accounts/SnsAccountManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/settings/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    .line 32
    iput-wide v2, p0, Lcom/android/settings/accounts/SnsAccountManager;->mQueryFailTime:J

    .line 33
    iput-object v0, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/settings/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    .line 59
    iput-wide v2, p0, Lcom/android/settings/accounts/SnsAccountManager;->mQueryFailTime:J

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accounts/SnsAccountManager;->updateSSOAccounts()V

    .line 63
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/accounts/SnsAccountManager;->mInstance:Lcom/android/settings/accounts/SnsAccountManager;

    if-nez v0, :cond_0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    new-instance v0, Lcom/android/settings/accounts/SnsAccountManager;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/SnsAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accounts/SnsAccountManager;->mInstance:Lcom/android/settings/accounts/SnsAccountManager;

    .line 74
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/accounts/SnsAccountManager;->mInstance:Lcom/android/settings/accounts/SnsAccountManager;

    return-object v0

    .line 70
    :cond_1
    const-string v0, "SnsAccountManager"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized querySSOAccounts()V
    .locals 10

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "content://com.sec.android.app.sns3/sso_account"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const-string v0, "account_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "snsAccountType":Ljava/lang/String;
    const-string v0, "sso_account_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "ssoAccountType":Ljava/lang/String;
    const-string v0, "sso_account_label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "ssoAccountLabel":Ljava/lang/String;
    const-string v0, "sso_retry_action"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "ssoRetryAction":Ljava/lang/String;
    const-string v0, "service_app_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "serviceAppName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    .end local v1    # "snsAccountType":Ljava/lang/String;
    .end local v2    # "ssoAccountType":Ljava/lang/String;
    .end local v3    # "ssoAccountLabel":Ljava/lang/String;
    .end local v4    # "ssoRetryAction":Ljava/lang/String;
    .end local v5    # "serviceAppName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings/accounts/SnsAccountManager;->mQueryFailTime:J

    .line 107
    const-string v0, "SnsAccountManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSO accounts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings/accounts/SnsAccountManager;->mQueryFailTime:J

    .line 110
    const-string v0, "SnsAccountManager"

    const-string v7, "cursor of sns_account is null"

    invoke-static {v0, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "pairedAccount":Landroid/accounts/Account;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getPairedAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "pairedAccountType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/settings/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 166
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 167
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 171
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_0
    return-object v1
.end method

.method public getPairedAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "pairedAccountType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    .line 149
    .local v0, "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    if-eqz v0, :cond_0

    .line 150
    iget-object v2, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v1, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    .line 157
    :cond_0
    :goto_0
    return-object v1

    .line 153
    :cond_1
    iget-object v1, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 213
    .local v2, "ssoAccount":Landroid/accounts/Account;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "pairedAccountType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/settings/accounts/SnsAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 216
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 217
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 221
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_0
    return-object v2
.end method

.method public declared-synchronized getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/settings/accounts/SnsAccountManager;->mQueryFailTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/accounts/SnsAccountManager;->mQueryFailTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/accounts/SnsAccountManager;->updateSSOAccounts()V

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/SnsAccountManager;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    .line 120
    .local v1, "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    iget-object v2, v1, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    .end local v1    # "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getSSOAccountLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "ssoAccountLabel":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    .line 228
    .local v0, "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountLabel:Ljava/lang/String;

    .line 232
    :cond_0
    return-object v1
.end method

.method public getSSOAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "ssoAccountType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    .line 203
    .local v0, "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    .line 207
    :cond_0
    return-object v1
.end method

.method public getServiceAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "serviceAppName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    .line 239
    .local v0, "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->serviceAppName:Ljava/lang/String;

    .line 243
    :cond_0
    return-object v1
.end method

.method public getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "snsAccountType":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v0

    .line 178
    .local v0, "item":Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, v0, Lcom/android/settings/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    .line 182
    :cond_0
    return-object v1
.end method

.method public updateSSOAccounts()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/accounts/SnsAccountManager;->querySSOAccounts()V

    .line 79
    return-void
.end method
