.class Lcom/android/server/accounts/AccountManagerService$4;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V
    .registers 9
    .param p2, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Z
    .param p6, "x4"    # Z

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    iput-object p8, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$result:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 878
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 881
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 863
    if-eqz p1, :cond_c

    .line 864
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 874
    :cond_b
    :goto_b
    return-void

    .line 872
    :cond_c
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    goto :goto_b
.end method

.method public run()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 849
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 850
    .local v4, "owner":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 851
    :try_start_c
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v5

    .line 852
    .local v5, "ownerAccounts":[Landroid/accounts/Account;
    move-object v1, v5

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_2b

    aget-object v0, v1, v2

    .line 853
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 854
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$result:Landroid/os/Bundle;

    invoke-interface {v6, p0, v8, v9}, Landroid/accounts/IAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 858
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_2b
    monitor-exit v7

    .line 859
    return-void

    .line 852
    .restart local v0    # "acc":Landroid/accounts/Account;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 858
    .end local v0    # "acc":Landroid/accounts/Account;
    .end local v1    # "arr$":[Landroid/accounts/Account;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "ownerAccounts":[Landroid/accounts/Account;
    :catchall_30
    move-exception v6

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v6
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAccountCredentialsForClone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
