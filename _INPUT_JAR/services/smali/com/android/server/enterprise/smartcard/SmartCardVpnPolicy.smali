.class public Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardVpnPolicy$Stub;
.source "SmartCardVpnPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mVpnProfiles:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "SmartCardVpnPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardVpnPolicy$Stub;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 66
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    return-void
.end method

.method private broadcastIntent()V
    .registers 5

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 267
    .local v1, "vpnProfilesPrev":I
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    .line 269
    if-lez v1, :cond_22

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-nez v2, :cond_22

    .line 270
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    :cond_21
    :goto_21
    return-void

    .line 273
    :cond_22
    if-nez v1, :cond_21

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-lez v2, :cond_21

    .line 274
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method private broadcastIntentAsUser(ZI)V
    .registers 8
    .param p1, "result"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 285
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return-void
.end method

.method private enforcePermission()I
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 75
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getVpnProfileCount()I
    .registers 5

    .prologue
    .line 231
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v2, "vpnAuthEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardVpnTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v2

    .line 238
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    :goto_18
    return v2

    .line 234
    :catch_19
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getVpnProfileCount() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v2, -0x1

    goto :goto_18
.end method

.method private getVpnProfileCountAsUser(ILjava/lang/String;)I
    .registers 12
    .param p1, "userID"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v5, 0x0

    .line 244
    .local v5, "retCnt":I
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 247
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    const-string/jumbo v6, "vpnAuthEnabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    if-eqz p2, :cond_34

    .line 251
    const-string/jumbo v6, "vpnProfile"

    invoke-virtual {v2, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_34
    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardVpnTable"

    invoke-virtual {v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v5, v6

    .line 254
    goto :goto_b

    .line 256
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_3e
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVpnProfileCountAsUser() count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_57

    .line 261
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_56
    return v5

    .line 257
    :catch_57
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getVpnProfileCountAsUser() failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private isAuthenticationEnabledAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 190
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCountAsUser(ILjava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "cnt":I
    if-lez v0, :cond_9

    .line 192
    const/4 v1, 0x1

    .line 194
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public isAuthenticationEnabled()Z
    .registers 4

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 184
    .local v0, "callingUid":I
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 185
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->isAuthenticationEnabledAsUser(I)Z

    move-result v2

    return v2
.end method

.method public isCredentialRequired(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 141
    if-nez p1, :cond_4

    .line 172
    :cond_3
    :goto_3
    return v3

    .line 144
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 145
    .local v0, "callingUid":I
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 146
    .local v2, "userId":I
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCountAsUser(ILjava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "cnt":I
    if-lez v1, :cond_3

    .line 170
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 215
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 216
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCountAsUser(ILjava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "cnt":I
    const/4 v1, 0x0

    .line 218
    .local v1, "enable":Z
    if-nez v0, :cond_12

    .line 222
    :goto_11
    return-void

    .line 221
    :cond_12
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntentAsUser(ZI)V

    goto :goto_11
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 227
    return-void
.end method

.method public requireCredentials(Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "require"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->enforcePermission()I

    move-result v0

    .line 89
    .local v0, "callingUid":I
    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 91
    .local v7, "userId":I
    if-nez p1, :cond_e

    .line 133
    :cond_d
    :goto_d
    return v8

    .line 94
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 98
    :try_start_16
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string/jumbo v10, "vpnProfile"

    invoke-virtual {v3, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, "ret":Z
    const/4 v10, 0x0

    invoke-direct {p0, v7, v10}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCountAsUser(ILjava/lang/String;)I

    move-result v5

    .line 104
    .local v5, "preCnt":I
    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardVpnTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 106
    .local v1, "cnt":I
    if-lez v1, :cond_67

    .line 108
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "vpnAuthEnabled"

    if-ne p2, v9, :cond_65

    move v10, v9

    :goto_45
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardVpnTable"

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    .line 119
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_54
    if-eqz v6, :cond_d

    .line 121
    const/4 v10, 0x0

    invoke-direct {p0, v7, v10}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCountAsUser(ILjava/lang/String;)I

    move-result v1

    .line 122
    if-nez v5, :cond_7f

    if-lez v1, :cond_7f

    .line 123
    const/4 v10, 0x1

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntentAsUser(ZI)V

    :cond_63
    :goto_63
    move v8, v9

    .line 127
    goto :goto_d

    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_65
    move v10, v8

    .line 109
    goto :goto_45

    .line 114
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_67
    const-string/jumbo v11, "vpnAuthEnabled"

    if-ne p2, v9, :cond_7d

    move v10, v9

    :goto_6d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v10, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardVpnTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_54

    :cond_7d
    move v10, v8

    .line 114
    goto :goto_6d

    .line 124
    :cond_7f
    if-lez v5, :cond_63

    if-nez v1, :cond_63

    .line 125
    const/4 v10, 0x0

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntentAsUser(ZI)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_87} :catch_88

    goto :goto_63

    .line 129
    .end local v1    # "cnt":I
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "preCnt":I
    .end local v6    # "ret":Z
    :catch_88
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "requireCredentials() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method
