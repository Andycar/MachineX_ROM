.class public Lcom/android/settings/KnoxConfirmLockHelper;
.super Ljava/lang/Object;
.source "KnoxConfirmLockHelper.java"


# static fields
.field private static maxAttempts:I

.field private static totalAttempts:I


# instance fields
.field private lockPolicy:I

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Landroid/os/PersonaManager;

.field private maximumFailedPasswordsForDisable:I

.field private maximumFailedPasswordsForWipe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput v0, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 28
    sput v0, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    .line 25
    iput-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 40
    iput-object p1, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/android/settings/KnoxConfirmLockHelper;->getLockAttemptPolicy()V

    .line 42
    return-void
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0a1ad6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 178
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method

.method private getLockAttemptPolicy()V
    .locals 12

    .prologue
    const/16 v11, 0x3e9

    const/16 v10, 0x3e8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 46
    iget-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    iput-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    .line 47
    iget-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 49
    iget-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .line 51
    .local v2, "pInfo":Landroid/content/pm/PersonaInfo;
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .line 52
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v7, "getMaximumFailedPasswordsForDisable"

    invoke-static {v5, v6, v7, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "getMaximumFailedPasswordsForDeviceDisable":I
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 54
    .local v4, "selectionArgs2":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v7, "getMaximumFailedPasswordsForWipe"

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 56
    .local v1, "getMaximumFailedPasswordsForWipe":I
    const-string v5, "KnoxConfirmLockHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maximumFailedPasswordsForDisable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getMaximumFailedPasswordsForWipe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    .line 59
    iput v1, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    .line 62
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v5, :cond_1

    .line 63
    const/16 v5, 0xa

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 64
    const/16 v5, 0x3ea

    iput v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    .line 79
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v5, :cond_0

    .line 80
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 83
    :cond_0
    iget-object v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v5

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    .line 84
    return-void

    .line 65
    :cond_1
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v5, :cond_2

    .line 66
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 67
    iput v11, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    .line 68
    :cond_2
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v5, :cond_3

    .line 69
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 70
    iput v10, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    .line 71
    :cond_3
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    iget v6, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gt v5, v6, :cond_4

    .line 72
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 73
    iput v10, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    .line 75
    :cond_4
    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    .line 76
    iput v11, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0
.end method


# virtual methods
.method protected checkNumberOfAttempts()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v5, 0x3e8

    const v4, 0x7f0a01f9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v2

    sput v2, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    .line 95
    sget v2, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    if-lt v2, v3, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    .line 98
    iget v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v2, v5, :cond_2

    .line 99
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "checkAttempts(): failedPasswordAttempts max than maximumFailedPasswordsForWipe!!: WIPING(Removing container)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    const-string v2, "KnoxConfirmLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " remove container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I

    move-result v1

    .line 104
    .local v1, "errorCode":I
    if-nez v1, :cond_1

    .line 158
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v1    # "errorCode":I
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 118
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "UNKNOWN ERROR"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "errorCode":I
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "Exception when remove container"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "errorCode":I
    :sswitch_0
    :try_start_1
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "ERROR_INTERNAL_ERROR"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :sswitch_1
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "ERROR_DOES_NOT_EXIST"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :sswitch_2
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "ERROR_NOT_CONTAINER_OWNER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v1    # "errorCode":I
    :cond_2
    iget v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_3

    .line 127
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "checkAttempts(): failedPasswordAttempts max than maximumFailedPasswordsForDisable!!: DISABLING container"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z

    goto :goto_0

    .line 130
    :cond_3
    iget v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_0

    .line 131
    const-string v2, "KnoxConfirmLockHelper"

    const-string v3, "checkAttempts(): failedPasswordAttempts is more than 10 and no policy set Container will get locked. And only admin can remove the lock"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z

    goto :goto_0

    .line 135
    :cond_4
    sget v2, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    .line 136
    iget v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v2, v5, :cond_5

    .line 137
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a026b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_5
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0269

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    sget v2, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v2, v3

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 146
    iget v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v2, v5, :cond_7

    .line 147
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a026c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v6, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_7
    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a026a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v6, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b3 -> :sswitch_2
        -0x4b2 -> :sswitch_1
        -0x3f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected resetNumberOfAttempts()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "resetting totalAttempts to 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 89
    return-void
.end method

.method protected setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x1

    .line 161
    if-nez p1, :cond_0

    .line 162
    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "textview is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    sget v0, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    if-ne v0, v2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v4, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
