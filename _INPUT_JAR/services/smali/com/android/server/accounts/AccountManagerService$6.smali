.class Lcom/android/server/accounts/AccountManagerService$6;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 15
    .param p2, "x0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Z
    .param p6, "x4"    # Z

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$notifyOnAuthFailure:Z

    iput-boolean p11, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$permissionGranted:Z

    iput p12, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerUid:I

    iput-boolean p13, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    iput-object p14, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 1798
    if-eqz p1, :cond_90

    .line 1799
    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1800
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$callerUid:I

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    const-string v5, "authTokenLabelKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->access$1300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1804
    .local v4, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1805
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "intent"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1806
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService$6;->onResult(Landroid/os/Bundle;)V

    .line 1832
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "bundle":Landroid/os/Bundle;
    :goto_2e
    return-void

    .line 1809
    :cond_2f
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1810
    .local v6, "authToken":Ljava/lang/String;
    if-eqz v6, :cond_69

    .line 1811
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1812
    .local v8, "name":Ljava/lang/String;
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1813
    .local v9, "type":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1814
    :cond_4f
    const/4 v0, 0x5

    const-string/jumbo v1, "the type and name should not be empty"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$6;->onError(ILjava/lang/String;)V

    goto :goto_2e

    .line 1818
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    if-nez v0, :cond_69

    .line 1819
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/server/accounts/AccountManagerService;->access$1400(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1824
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :cond_69
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1825
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_90

    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$notifyOnAuthFailure:Z

    if-eqz v0, :cond_90

    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$customTokens:Z

    if-nez v0, :cond_90

    .line 1826
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    const-string v3, "authFailedMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    # invokes: Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->access$1500(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 1831
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "authToken":Ljava/lang/String;
    :cond_90
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    goto :goto_2e
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1789
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$permissionGranted:Z

    if-nez v0, :cond_c

    .line 1790
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 1794
    :goto_b
    return-void

    .line 1792
    :cond_c
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 1778
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authTokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyOnAuthFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$6;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
