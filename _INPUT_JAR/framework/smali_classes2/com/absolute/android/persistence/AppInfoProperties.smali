.class public Lcom/absolute/android/persistence/AppInfoProperties;
.super Ljava/util/Properties;
.source "AppInfoProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String; = null

.field public static CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppInfoProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MONITOR_PROPERTY_NAME:Ljava/lang/String; = null

.field public static PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String; = null

.field public static PERSIST_PROPERTY_NAME:Ljava/lang/String; = null

.field public static RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String; = null

.field public static START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String; = null

.field public static START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_URL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static VERSION_CODE_PROPERTY_NAME:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "PackageName"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "VersionCode"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "UpdateUrl"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "UpdateIpAddress"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "AccessKey"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "MaxUpdateAttempts"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "UpdateRetryMinutes"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "Persist"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "StartOnInstall"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "StartOnInstallIntent"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "RestartIntent"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "Monitor"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "MonitorIntents"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "CheckRunningSecs"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "MaxRestartAttempts"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    .line 39
    const-string v0, "DownloadUrl"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    .line 40
    const-string v0, "DownloadIpAddress"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "DigitalSignature"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    .line 220
    new-instance v0, Lcom/absolute/android/persistence/AppInfoProperties$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppInfoProperties$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 231
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 233
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    sget-object v6, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_af

    move v3, v4

    :goto_59
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    sget-object v6, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_b1

    move v3, v4

    :goto_69
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_b3

    :goto_8a
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v2, "monitorIntentsProperty":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "monitorIntents":[Ljava/lang/String;
    if-eqz v1, :cond_b5

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9d
    array-length v3, v1

    if-ge v0, v3, :cond_b5

    .line 251
    if-lez v0, :cond_a7

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_a7
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .end local v0    # "i":I
    .end local v1    # "monitorIntents":[Ljava/lang/String;
    .end local v2    # "monitorIntentsProperty":Ljava/lang/StringBuilder;
    :cond_af
    move v3, v5

    .line 240
    goto :goto_59

    :cond_b1
    move v3, v5

    .line 241
    goto :goto_69

    :cond_b3
    move v4, v5

    .line 244
    goto :goto_8a

    .line 255
    .restart local v1    # "monitorIntents":[Ljava/lang/String;
    .restart local v2    # "monitorIntentsProperty":Ljava/lang/StringBuilder;
    :cond_b5
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppInfoProperties$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/AppInfoProperties$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;
    .registers 24
    .param p1, "defaultAppProfile"    # Lcom/absolute/android/persistence/AppProfile;

    .prologue
    .line 58
    if-nez p1, :cond_44

    .line 59
    new-instance p1, Lcom/absolute/android/persistence/AppProfile;

    .end local p1    # "defaultAppProfile":Lcom/absolute/android/persistence/AppProfile;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    const/4 v5, -0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    const/4 v15, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    new-instance v21, Ljava/lang/String;

    invoke-direct/range {v21 .. v21}, Ljava/lang/String;-><init>()V

    aput-object v21, v16, v19

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .line 64
    .restart local p1    # "defaultAppProfile":Lcom/absolute/android/persistence/AppProfile;
    :cond_44
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "packageName":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 66
    .local v5, "versionCode":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "accessKey":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "updateUrl":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "updateIpAddress":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 73
    .local v9, "maxUpdateAttempts":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 76
    .local v10, "updateRetryMins":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 79
    .local v11, "persist":Z
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 82
    .local v12, "startOnInstall":Z
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, "startOnInstallIntent":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "restartIntent":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 89
    .local v15, "monitor":Z
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 90
    .local v20, "monitorIntentsProperty":Ljava/lang/String;
    const/16 v16, 0x0

    .line 91
    .local v16, "monitorIntents":[Ljava/lang/String;
    if-eqz v20, :cond_1a4

    .line 92
    const-string v19, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 98
    :goto_164
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 101
    .local v17, "checkRunningSecs":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 104
    .local v18, "maxRestartAttempts":I
    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .line 122
    .local v3, "newAppProfile":Lcom/absolute/android/persistence/AppProfile;
    return-object v3

    .line 95
    .end local v3    # "newAppProfile":Lcom/absolute/android/persistence/AppProfile;
    .end local v17    # "checkRunningSecs":I
    .end local v18    # "maxRestartAttempts":I
    :cond_1a4
    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v16

    goto :goto_164
.end method

.method public getAppVersion()I
    .registers 3

    .prologue
    .line 147
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDigitalSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 196
    .local v0, "appProfile":Lcom/absolute/android/persistence/AppProfile;
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v1

    if-eqz v1, :cond_8e

    move v1, v2

    :goto_3f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v1

    if-eqz v1, :cond_90

    move v1, v2

    :goto_49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    if-eqz v1, :cond_92

    :goto_60
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return-void

    :cond_8e
    move v1, v3

    .line 203
    goto :goto_3f

    :cond_90
    move v1, v3

    .line 204
    goto :goto_49

    :cond_92
    move v2, v3

    .line 207
    goto :goto_60
.end method
