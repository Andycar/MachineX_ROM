.class public Lcom/absolute/android/persistence/AppProfile;
.super Ljava/lang/Object;
.source "AppProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_accessKey:Ljava/lang/String;

.field private m_checkRunningSecs:Ljava/lang/Integer;

.field private m_extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxRestartAttempts:Ljava/lang/Integer;

.field private m_maxUpdateAttempts:Ljava/lang/Integer;

.field private m_monitor:Ljava/lang/Boolean;

.field private m_monitorIntents:[Ljava/lang/String;

.field private m_packageName:Ljava/lang/String;

.field private m_persist:Ljava/lang/Boolean;

.field private m_restartIntent:Ljava/lang/String;

.field private m_startOnInstall:Ljava/lang/Boolean;

.field private m_startOnInstallIntent:Ljava/lang/String;

.field private m_updateIpAddress:Ljava/lang/String;

.field private m_updateRetryMinutes:Ljava/lang/Integer;

.field private m_updateUrl:Ljava/lang/String;

.field private m_versionCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 614
    new-instance v0, Lcom/absolute/android/persistence/AppProfile$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppProfile$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 26
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 33
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 36
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 39
    iput-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 578
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 26
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 33
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 36
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 39
    iput-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    move v0, v1

    :goto_83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d5

    move v0, v1

    :goto_90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d7

    :goto_a8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 642
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 643
    return-void

    :cond_d3
    move v0, v2

    .line 634
    goto :goto_83

    :cond_d5
    move v0, v2

    .line 635
    goto :goto_90

    :cond_d7
    move v1, v2

    .line 638
    goto :goto_a8
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppProfile$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/AppProfile$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/AppProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "updateUrl"    # Ljava/lang/String;
    .param p4, "updateIpAddress"    # Ljava/lang/String;
    .param p5, "accessKey"    # Ljava/lang/String;
    .param p6, "maxUpdateAttempts"    # I
    .param p7, "updateRetryMinutes"    # I
    .param p8, "persist"    # Z
    .param p9, "startOnInstall"    # Z
    .param p10, "startOnInstallIntent"    # Ljava/lang/String;
    .param p11, "restartIntent"    # Ljava/lang/String;
    .param p12, "monitor"    # Z
    .param p13, "monitorIntents"    # [Ljava/lang/String;
    .param p14, "checkRunningSecs"    # I
    .param p15, "maxRestartAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p16, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 30
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 31
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 556
    if-nez p1, :cond_5e

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "package name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_5e
    if-nez p2, :cond_69

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "version is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_69
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    .line 560
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 561
    iput-object p3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 562
    iput-object p4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 563
    iput-object p5, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 564
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 565
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 566
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 567
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 568
    iput-object p10, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 569
    iput-object p11, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 570
    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 571
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 572
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 573
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 574
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 575
    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 728
    if-nez p0, :cond_9

    .line 729
    if-nez p1, :cond_7

    .line 735
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 729
    goto :goto_6

    .line 731
    :cond_9
    if-nez p1, :cond_f

    .line 732
    if-eqz p0, :cond_6

    move v0, v1

    goto :goto_6

    .line 735
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 656
    new-instance v0, Lcom/absolute/android/persistence/AppProfile;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppProfile;-><init>()V

    .line 657
    .local v0, "clone":Lcom/absolute/android/persistence/AppProfile;
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    if-eqz v2, :cond_b8

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    .line 658
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 659
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    if-eqz v2, :cond_bb

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 660
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_be

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_37
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 661
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    if-eqz v2, :cond_c1

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 662
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 663
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 664
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 665
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 666
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    if-eqz v2, :cond_c3

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_81
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 667
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    if-eqz v2, :cond_c5

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8e
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 668
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 669
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    if-eqz v2, :cond_c7

    .line 670
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 671
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a8
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_c7

    .line 672
    iget-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .end local v1    # "i":I
    :cond_b8
    move-object v2, v3

    .line 657
    goto/16 :goto_11

    :cond_bb
    move-object v2, v3

    .line 659
    goto/16 :goto_2a

    :cond_be
    move-object v2, v3

    .line 660
    goto/16 :goto_37

    :cond_c1
    move-object v2, v3

    .line 661
    goto :goto_44

    :cond_c3
    move-object v2, v3

    .line 666
    goto :goto_81

    :cond_c5
    move-object v2, v3

    .line 667
    goto :goto_8e

    .line 675
    :cond_c7
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 676
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 677
    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    :goto_eb
    iput-object v2, v0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 679
    return-object v0

    :cond_ee
    move-object v2, v3

    .line 677
    goto :goto_eb
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 691
    if-ne p0, p1, :cond_5

    .line 708
    :cond_4
    :goto_4
    return v1

    .line 696
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 697
    goto :goto_4

    .line 701
    :cond_9
    instance-of v3, p1, Lcom/absolute/android/persistence/AppProfile;

    if-nez v3, :cond_f

    move v1, v2

    .line 702
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 706
    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    .line 708
    .local v0, "apObj":Lcom/absolute/android/persistence/AppProfile;
    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/absolute/android/persistence/AppProfile;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_b2
    move v1, v2

    goto/16 :goto_4
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRunningSecs()I
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtras()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsMonitored()Z
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsPersisted()Z
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMaxRestartAttempts()I
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxUpdateAttempts()I
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonitorIntents()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestartIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOnInstall()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getStartOnInstallIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRetryMinutes()I
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setCheckRunningSecs(I)V
    .registers 3
    .param p1, "secs"    # I

    .prologue
    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    .line 372
    return-void
.end method

.method public setExtras(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    .line 417
    return-void
.end method

.method public setIsMonitored(Z)V
    .registers 3
    .param p1, "monitor"    # Z

    .prologue
    .line 314
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    .line 315
    return-void
.end method

.method public setIsPersisted(Z)V
    .registers 3
    .param p1, "persist"    # Z

    .prologue
    .line 205
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    .line 206
    return-void
.end method

.method public setMaxRestartAttempts(I)V
    .registers 3
    .param p1, "maxAttempts"    # I

    .prologue
    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    .line 394
    return-void
.end method

.method public setMaxUpdateAttempts(I)V
    .registers 3
    .param p1, "maxAttempts"    # I

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 162
    return-void
.end method

.method public setMonitorIntents([Ljava/lang/String;)V
    .registers 2
    .param p1, "monitorIntents"    # [Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setRestartIntent(Ljava/lang/String;)V
    .registers 2
    .param p1, "startIntent"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setStartOnInstall(Z)V
    .registers 3
    .param p1, "startOnInstall"    # Z

    .prologue
    .line 227
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    .line 228
    return-void
.end method

.method public setStartOnInstallIntent(Ljava/lang/String;)V
    .registers 2
    .param p1, "startIntent"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setUpdateIpAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "updateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUpdateRetryMinutes(I)V
    .registers 3
    .param p1, "mins"    # I

    .prologue
    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    .line 186
    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setVersion(I)V
    .registers 4
    .param p1, "versionCode"    # I

    .prologue
    .line 72
    if-nez p1, :cond_b

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "version is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, "appProfileText":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsPersisted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsMonitored = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v5, "MonitorIntents = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v5, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    if-eqz v5, :cond_a7

    .line 436
    iget-object v1, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8a
    if-ge v2, v3, :cond_a7

    aget-object v4, v1, v2

    .line 437
    .local v4, "monitorIntent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 440
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "monitorIntent":Ljava/lang/String;
    :cond_a7
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckRunningSecs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxRestartAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOnInstall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOnInstallIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestartIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccessKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateIpAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxUpdateAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateRetryMinutes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_restartIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    :goto_5b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_monitorIntents:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget-object v0, p0, Lcom/absolute/android/persistence/AppProfile;->m_extras:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 609
    return-void

    :cond_7b
    move v0, v2

    .line 600
    goto :goto_3a

    :cond_7d
    move v0, v2

    .line 601
    goto :goto_46

    :cond_7f
    move v1, v2

    .line 604
    goto :goto_5b
.end method
