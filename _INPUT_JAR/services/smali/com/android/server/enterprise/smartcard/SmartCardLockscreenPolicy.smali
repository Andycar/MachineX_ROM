.class public Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;
.source "SmartCardLockscreenPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preAdminRemoval_auth_state:Z

.field private preAuthState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-string v0, "SmartCardLockscreenPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 99
    iput-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    .line 101
    iput-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    .line 105
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    .line 111
    return-void
.end method

.method private broadcastIntentAsUser(ZI)V
    .registers 8
    .param p1, "result"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.smartcard.lockscreen.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 293
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 294
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    return-void
.end method

.method private enforcePermission()I
    .registers 4

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public disableAuthentication()Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 165
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    .line 166
    .local v0, "callingUid":I
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 169
    .local v5, "userId":I
    :try_start_a
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v3

    .line 170
    .local v3, "oldState":Z
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardLockscreenTable"

    const-string/jumbo v9, "smartcardAuth"

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 173
    .local v4, "ret":Z
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v2

    .line 175
    .local v2, "newState":Z
    if-eq v2, v3, :cond_24

    .line 176
    const/4 v7, 0x0

    invoke-direct {p0, v7, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntentAsUser(ZI)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    .line 183
    .end local v2    # "newState":Z
    .end local v3    # "oldState":Z
    .end local v4    # "ret":Z
    :cond_24
    :goto_24
    return v4

    .line 179
    :catch_25
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v8, "disableAuthentication() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 183
    goto :goto_24
.end method

.method public enableAuthentication()Z
    .registers 11

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    .line 144
    .local v0, "callingUid":I
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 147
    .local v5, "userId":I
    :try_start_9
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v3

    .line 148
    .local v3, "oldState":Z
    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardLockscreenTable"

    const-string/jumbo v8, "smartcardAuth"

    const/4 v9, 0x1

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 151
    .local v4, "ret":Z
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v2

    .line 153
    .local v2, "newState":Z
    if-eq v2, v3, :cond_23

    .line 154
    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntentAsUser(ZI)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    .line 161
    .end local v2    # "newState":Z
    .end local v3    # "oldState":Z
    .end local v4    # "ret":Z
    :cond_23
    :goto_23
    return v4

    .line 157
    :catch_24
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v7, "enableAuthentication() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v4, 0x0

    goto :goto_23
.end method

.method public isAuthenticationEnabled()Z
    .registers 5

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 196
    .local v0, "callingUid":I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 198
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v3

    return v3
.end method

.method public isAuthenticationEnabledAsUser(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 202
    const/4 v2, 0x0

    .line 205
    .local v2, "ret":Z
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardLockscreenTable"

    const-string/jumbo v7, "smartcardAuth"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 209
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    move-result v3

    .line 210
    .local v3, "value":Z
    if-eqz v3, :cond_10

    .line 211
    move v2, v3

    .end local v3    # "value":Z
    :cond_23
    move v5, v2

    .line 220
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_24
    return v5

    .line 216
    :catch_25
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isAuthenticationEnabled() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v5, 0x0

    goto :goto_24
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 241
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 247
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 251
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v4

    .line 252
    :try_start_d
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v0

    .line 253
    .local v0, "curr_auth_state":Z
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_3d

    .line 254
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 255
    .local v1, "prev_auth_state":Z
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_41

    .line 261
    if-eq v0, v1, :cond_3c

    .line 262
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntentAsUser(ZI)V

    .line 272
    :cond_3c
    return-void

    .line 257
    .end local v1    # "prev_auth_state":Z
    :cond_3d
    if-eqz v0, :cond_40

    const/4 v1, 0x0

    .restart local v1    # "prev_auth_state":Z
    :cond_40
    goto :goto_36

    .line 259
    .end local v0    # "curr_auth_state":Z
    .end local v1    # "prev_auth_state":Z
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v3
.end method

.method public onPreAdminRemoval(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 277
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 278
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    monitor-enter v2

    .line 279
    :try_start_c
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 280
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAuthState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_29
    monitor-exit v2

    .line 285
    return-void

    .line 281
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method
