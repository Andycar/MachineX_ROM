.class Lcom/android/server/enterprise/wifi/WifiPolicy$1;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 2

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .registers 12
    .param p1, "personaId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 228
    const-string v5, "WifiPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onKnoxContainerLaunch called for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 230
    .local v0, "callingUid":I
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 231
    .local v3, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    .line 232
    .local v4, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz p1, :cond_51

    .line 233
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v5, v5, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v2

    .line 234
    .local v2, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    const/4 v1, 0x0

    .line 235
    .local v1, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    if-eqz v2, :cond_38

    .line 236
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v1

    .line 239
    :cond_38
    const/16 v5, 0x64

    if-lt p1, v5, :cond_4d

    .line 240
    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z
    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$002(Z)Z

    .line 245
    :goto_3f
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isResetContainerOnRebootEnabled()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 246
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v5, v3, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->activateWifiSsidRestriction(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 254
    .end local v1    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v2    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_4c
    :goto_4c
    return-void

    .line 242
    .restart local v1    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .restart local v2    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_4d
    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z
    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$002(Z)Z

    goto :goto_3f

    .line 249
    .end local v1    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v2    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_51
    # getter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z
    invoke-static {}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$000()Z

    move-result v5

    if-ne v5, v8, :cond_4c

    .line 250
    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z
    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$002(Z)Z

    .line 251
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v5, v3, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->activateWifiSsidRestriction(Landroid/app/enterprise/ContextInfo;Z)Z

    goto :goto_4c
.end method

.method public onPersonaActive(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 213
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPersonaActive called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onRemovePersona(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 218
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemovePersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onResetPersona(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 223
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 258
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method
