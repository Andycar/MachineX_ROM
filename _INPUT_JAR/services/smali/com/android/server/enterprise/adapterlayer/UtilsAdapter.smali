.class public Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;
.super Ljava/lang/Object;
.source "UtilsAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .registers 3
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "fields"    # [Ljava/lang/String;
    .param p2, "outSizes"    # [J

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 46
    return-void
.end method

.method public static updateAccountManagerCache(I)V
    .registers 4
    .param p0, "userID"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    .line 39
    .local v0, "ams":Lcom/android/server/accounts/AccountManagerService;
    if-eqz v0, :cond_b

    .line 40
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    .line 42
    :cond_b
    return-void
.end method
