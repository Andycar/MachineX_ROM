.class public Landroid/content/pm/PersonaInfo;
.super Ljava/lang/Object;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUTH_TYPE_CMK:I = 0x2

.field public static final AUTH_TYPE_PWD_HASH:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_SECURITY_TIMEOUT_DEFAULT:I = 0x927c0

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field public authenticationType:I

.field public canUseBluetooth:Z

.field public canUseExtSdcard:Z

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field private fingerCount:I

.field public flags:I

.field public fotaUpgradeVersion:I

.field public fwversion:Ljava/lang/String;

.field public id:I

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAdminLockedJustBefore:Z

.field public isEulaShown:Z

.field private isFingerIdentifyFailed:Z

.field private isFingerReset:Z

.field private isFingerTimeout:Z

.field public isFsMounted:Z

.field public isKioskModeEnabled:Z

.field public isLightWeightContainer:Z

.field public isPureContainer:Z

.field public isRestarting:Z

.field public isSdpMinor:Z

.field private isUnlockedAfterTurnOn:Z

.field public isUserManaged:Z

.field private knoxBackupPin:Ljava/lang/String;

.field private knoxSecurityTimeoutValue:I

.field private lastKeyguardUnlockTime:J

.field public lastLoggedOutTime:J

.field public lockInProgress:Z

.field public needsRestart:Z

.field parentId:I

.field public partial:Z

.field public personaFwkVersion:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field public sdpActive:Z

.field public sdpEnabled:Z

.field private setupWizardApkLocation:Ljava/lang/String;

.field public shownFolderHelp:Z

.field public shownLauncherHelp:Z

.field public timaEcrytfsIndex:I

.field public timaPasswordHintIndex:I

.field public timaPasswordIndex:I

.field public timaPwdResetTokenIndex:I

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z

.field private useEncoding:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 553
    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 71
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 74
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 75
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 78
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 79
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 80
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 81
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 83
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 84
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 85
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 87
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 88
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 89
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 91
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 92
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 94
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 95
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 96
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 97
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 98
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 103
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 104
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 105
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 106
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 107
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 108
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 109
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 111
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 112
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 113
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 115
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 117
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 124
    iput v3, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 126
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 127
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 129
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 131
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 133
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 135
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 137
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 139
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 141
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 143
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 258
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 274
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "creatorUid"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 71
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 74
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 75
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 78
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 79
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 80
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 81
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 83
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 84
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 85
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 87
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 88
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 89
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 91
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 92
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 94
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 95
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 96
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 97
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 98
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 103
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 104
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 105
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 106
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 107
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 108
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 109
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 111
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 112
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 113
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 115
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 117
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 124
    iput v3, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 126
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 127
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 129
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 131
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 133
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 135
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 137
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 139
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 141
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 143
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 258
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 149
    iput p1, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 150
    iput p2, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 151
    iput p3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 152
    iput p4, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .registers 10
    .param p1, "orig"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 71
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 74
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 75
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 78
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 79
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 80
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 81
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 83
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 84
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 85
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 87
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 88
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 89
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 91
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 92
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 94
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 95
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 96
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 97
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 98
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 103
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 104
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 105
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 106
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 107
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 108
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 109
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 111
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 112
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 113
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 115
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 117
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 124
    iput v3, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 126
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 127
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 129
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 131
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 133
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 135
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 137
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 139
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 141
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 143
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 258
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 278
    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 279
    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 280
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 281
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 282
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 283
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 284
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 285
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 288
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 289
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 290
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPwdResetTokenIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 291
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 292
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 294
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 295
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 296
    iget v0, p1, Landroid/content/pm/PersonaInfo;->authenticationType:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 297
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 298
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 299
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 300
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 301
    iget v0, p1, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 302
    iget v0, p1, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 303
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 304
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 305
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 306
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 307
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 308
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordHintIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 309
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 310
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 311
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 312
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 313
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 314
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 315
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 316
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 317
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 318
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 319
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 320
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 321
    iget v0, p1, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 322
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 323
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 324
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 325
    iget v0, p1, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 326
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 327
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 328
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 71
    iput v2, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 74
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 75
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 78
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 79
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 80
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 81
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 83
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 85
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 92
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 94
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 95
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 96
    iput v2, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 97
    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 98
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 103
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 104
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 105
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 106
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 107
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 108
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 109
    iput v2, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 111
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 112
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 113
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 115
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 117
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 124
    iput v1, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 126
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 127
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 129
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 131
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 133
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 135
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 137
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 139
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 141
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 143
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 258
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d7

    move v0, v1

    :goto_8b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1da

    move v0, v1

    :goto_d0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1dd

    move v0, v1

    :goto_e5
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e0

    move v0, v1

    :goto_ee
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e3

    move v0, v1

    :goto_fd
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e6

    move v0, v1

    :goto_106
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e9

    move v0, v1

    :goto_11b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ec

    move v0, v1

    :goto_124
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ef

    move v0, v1

    :goto_12d
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f2

    move v0, v1

    :goto_136
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f5

    move v0, v1

    :goto_13f
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f8

    move v0, v1

    :goto_148
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fb

    move v0, v1

    :goto_151
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fe

    move v0, v1

    :goto_15a
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_201

    move v0, v1

    :goto_163
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_204

    move v0, v1

    :goto_16c
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_207

    move v0, v1

    :goto_175
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20a

    move v0, v1

    :goto_17e
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20d

    move v0, v1

    :goto_187
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_210

    move v0, v1

    :goto_190
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_213

    move v0, v1

    :goto_199
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_215

    move v0, v1

    :goto_1ae
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_217

    move v0, v1

    :goto_1b7
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_219

    move v0, v1

    :goto_1c0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21b

    :goto_1ce
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 610
    return-void

    :cond_1d7
    move v0, v2

    .line 566
    goto/16 :goto_8b

    :cond_1da
    move v0, v2

    .line 577
    goto/16 :goto_d0

    :cond_1dd
    move v0, v2

    .line 580
    goto/16 :goto_e5

    :cond_1e0
    move v0, v2

    .line 581
    goto/16 :goto_ee

    :cond_1e3
    move v0, v2

    .line 583
    goto/16 :goto_fd

    :cond_1e6
    move v0, v2

    .line 584
    goto/16 :goto_106

    :cond_1e9
    move v0, v2

    .line 587
    goto/16 :goto_11b

    :cond_1ec
    move v0, v2

    .line 588
    goto/16 :goto_124

    :cond_1ef
    move v0, v2

    .line 589
    goto/16 :goto_12d

    :cond_1f2
    move v0, v2

    .line 590
    goto/16 :goto_136

    :cond_1f5
    move v0, v2

    .line 591
    goto/16 :goto_13f

    :cond_1f8
    move v0, v2

    .line 592
    goto/16 :goto_148

    :cond_1fb
    move v0, v2

    .line 593
    goto/16 :goto_151

    :cond_1fe
    move v0, v2

    .line 594
    goto/16 :goto_15a

    :cond_201
    move v0, v2

    .line 595
    goto/16 :goto_163

    :cond_204
    move v0, v2

    .line 596
    goto/16 :goto_16c

    :cond_207
    move v0, v2

    .line 597
    goto/16 :goto_175

    :cond_20a
    move v0, v2

    .line 598
    goto/16 :goto_17e

    :cond_20d
    move v0, v2

    .line 599
    goto/16 :goto_187

    :cond_210
    move v0, v2

    .line 600
    goto/16 :goto_190

    :cond_213
    move v0, v2

    .line 601
    goto :goto_199

    :cond_215
    move v0, v2

    .line 604
    goto :goto_1ae

    :cond_217
    move v0, v2

    .line 605
    goto :goto_1b7

    :cond_219
    move v0, v2

    .line 606
    goto :goto_1c0

    :cond_21b
    move v1, v2

    .line 608
    goto :goto_1ce
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PersonaInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getAuthenticationType()I
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    return v0
.end method

.method public getCreatorUid()I
    .registers 4

    .prologue
    .line 368
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getFingerCount()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    return v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getIsAdminLockedJustBefore()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    return v0
.end method

.method public getIsFingerIdentifyFailed()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    return v0
.end method

.method public getIsFingerReset()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    return v0
.end method

.method public getIsFingerTimeout()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    return v0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    return v0
.end method

.method public getKnoxBackupPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxSecurityTimeoutValue()I
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    return v0
.end method

.method public getLastKeyguardUnlockTime()J
    .registers 3

    .prologue
    .line 217
    iget-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    return-wide v0
.end method

.method public getParentId()I
    .registers 2

    .prologue
    .line 342
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .registers 3

    .prologue
    .line 332
    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 420
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordHintIndex()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .registers 2

    .prologue
    .line 400
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getTimaPwdResetTokenIndex()I
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 3

    .prologue
    .line 337
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .registers 4

    .prologue
    .line 442
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getsamsungAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isEncodingRequired()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    return v0
.end method

.method public isMigratedPersona()Z
    .registers 3

    .prologue
    .line 254
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSecureFileSystem()Z
    .registers 3

    .prologue
    .line 243
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSecureStorageEnabled()Z
    .registers 3

    .prologue
    .line 248
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setAdminUid(I)V
    .registers 2
    .param p1, "adminUid"    # I

    .prologue
    .line 363
    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 364
    return-void
.end method

.method public setAuthenticationType(I)V
    .registers 5
    .param p1, "authType"    # I

    .prologue
    .line 426
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput p1, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 429
    return-void
.end method

.method public setCreatorUid(I)V
    .registers 5
    .param p1, "creatorUid"    # I

    .prologue
    .line 374
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 376
    return-void
.end method

.method public setEncodingRequired(Z)V
    .registers 2
    .param p1, "isEncoding"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 268
    return-void
.end method

.method public setFingerCount(I)V
    .registers 2
    .param p1, "fingerCount"    # I

    .prologue
    .line 232
    iput p1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 233
    return-void
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 460
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 462
    :cond_14
    return-void
.end method

.method public setIsAdminLockedJustBefore(Z)V
    .registers 2
    .param p1, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 213
    return-void
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .registers 2
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 193
    return-void
.end method

.method public setIsFingerReset(Z)V
    .registers 2
    .param p1, "isFingerReset"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 203
    return-void
.end method

.method public setIsFingerTimeout(Z)V
    .registers 2
    .param p1, "isFingerTimeout"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 183
    return-void
.end method

.method public setIsUnlockedAfterTurnOn(Z)V
    .registers 2
    .param p1, "isUnlockedAfterTurnOn"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 173
    return-void
.end method

.method public setKnoxBackupPin(Ljava/lang/String;)V
    .registers 2
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setKnoxSecurityTimeoutValue(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 471
    iput p1, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 472
    return-void
.end method

.method public setLastKeyguardUnlockTime(J)V
    .registers 4
    .param p1, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 222
    iput-wide p1, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 223
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .registers 5
    .param p1, "setupWizardApkLocation"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .registers 2
    .param p1, "timaEcrytfsIndex"    # I

    .prologue
    .line 385
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 386
    return-void
.end method

.method public setTimaPasswordHintIndex(I)V
    .registers 2
    .param p1, "timaPasswordHintIndex"    # I

    .prologue
    .line 415
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 416
    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .registers 2
    .param p1, "timaPasswordIndex"    # I

    .prologue
    .line 405
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 406
    return-void
.end method

.method public setTimaPwdResetTokenIndex(I)V
    .registers 2
    .param p1, "timaPwdResetTokenIndex"    # I

    .prologue
    .line 395
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 396
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .registers 2
    .param p1, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyKnoxBackupPin(Ljava/lang/String;)Z
    .registers 3
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 477
    const/4 v0, 0x1

    .line 479
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_133

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_136

    move v0, v1

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_139

    move v0, v1

    :goto_5d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v0, :cond_13c

    move v0, v1

    :goto_65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_13f

    move v0, v1

    :goto_72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_142

    move v0, v1

    :goto_7a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v0, :cond_145

    move v0, v1

    :goto_8c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v0, :cond_148

    move v0, v1

    :goto_94
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    if-eqz v0, :cond_14b

    move v0, v1

    :goto_9c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_14e

    move v0, v1

    :goto_a4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    if-eqz v0, :cond_151

    move v0, v1

    :goto_ac
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    if-eqz v0, :cond_154

    move v0, v1

    :goto_b4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v0, :cond_157

    move v0, v1

    :goto_bc
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-eqz v0, :cond_15a

    move v0, v1

    :goto_c4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v0, :cond_15d

    move v0, v1

    :goto_cc
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_160

    move v0, v1

    :goto_d4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    if-eqz v0, :cond_163

    move v0, v1

    :goto_dc
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    if-eqz v0, :cond_166

    move v0, v1

    :goto_e4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    if-eqz v0, :cond_169

    move v0, v1

    :goto_ec
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    if-eqz v0, :cond_16b

    move v0, v1

    :goto_f4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    if-eqz v0, :cond_16d

    move v0, v1

    :goto_fc
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    if-eqz v0, :cond_16f

    move v0, v1

    :goto_10e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    if-eqz v0, :cond_171

    move v0, v1

    :goto_116
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    if-eqz v0, :cond_173

    move v0, v1

    :goto_11e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    if-eqz v0, :cond_175

    :goto_12a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    return-void

    :cond_133
    move v0, v2

    .line 507
    goto/16 :goto_11

    :cond_136
    move v0, v2

    .line 518
    goto/16 :goto_4b

    :cond_139
    move v0, v2

    .line 521
    goto/16 :goto_5d

    :cond_13c
    move v0, v2

    .line 522
    goto/16 :goto_65

    :cond_13f
    move v0, v2

    .line 524
    goto/16 :goto_72

    :cond_142
    move v0, v2

    .line 525
    goto/16 :goto_7a

    :cond_145
    move v0, v2

    .line 528
    goto/16 :goto_8c

    :cond_148
    move v0, v2

    .line 529
    goto/16 :goto_94

    :cond_14b
    move v0, v2

    .line 530
    goto/16 :goto_9c

    :cond_14e
    move v0, v2

    .line 531
    goto/16 :goto_a4

    :cond_151
    move v0, v2

    .line 532
    goto/16 :goto_ac

    :cond_154
    move v0, v2

    .line 533
    goto/16 :goto_b4

    :cond_157
    move v0, v2

    .line 534
    goto/16 :goto_bc

    :cond_15a
    move v0, v2

    .line 535
    goto/16 :goto_c4

    :cond_15d
    move v0, v2

    .line 536
    goto/16 :goto_cc

    :cond_160
    move v0, v2

    .line 537
    goto/16 :goto_d4

    :cond_163
    move v0, v2

    .line 538
    goto/16 :goto_dc

    :cond_166
    move v0, v2

    .line 539
    goto/16 :goto_e4

    :cond_169
    move v0, v2

    .line 540
    goto :goto_ec

    :cond_16b
    move v0, v2

    .line 541
    goto :goto_f4

    :cond_16d
    move v0, v2

    .line 542
    goto :goto_fc

    :cond_16f
    move v0, v2

    .line 545
    goto :goto_10e

    :cond_171
    move v0, v2

    .line 546
    goto :goto_116

    :cond_173
    move v0, v2

    .line 547
    goto :goto_11e

    :cond_175
    move v1, v2

    .line 549
    goto :goto_12a
.end method
