.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Landroid/os/UserManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "UserManager"

    sput-object v0, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    sput-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IUserManager;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 394
    iput-object p1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 395
    return-void
.end method

.method private static addDefaultUserRestrictions(Landroid/os/Bundle;)V
    .registers 3
    .param p0, "restrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 753
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    const-string/jumbo v0, "no_sms"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 755
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const-class v1, Landroid/os/UserManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    if-nez v0, :cond_12

    .line 386
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    .line 388
    :cond_12
    sget-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 385
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMaxSupportedUsers()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1082
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "JVP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1085
    :cond_b
    :goto_b
    return v0

    .line 1084
    :cond_c
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1085
    const-string v0, "fw.max_users"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_b
.end method

.method public static supportsMultipleUsers()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 403
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-le v1, v0, :cond_1b

    const-string v1, "fw.show_multiuserui"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public canAddMoreManagedProfiles()Z
    .registers 4

    .prologue
    .line 862
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->canAddMoreManagedProfiles()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 865
    :goto_6
    return v1

    .line 863
    :catch_7
    move-exception v0

    .line 864
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not check if we can add more managed profiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public canAddMoreUsers()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 841
    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 842
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 843
    .local v2, "totalUserCount":I
    const/4 v0, 0x0

    .line 844
    .local v0, "aliveUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_1e

    .line 845
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 846
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 847
    add-int/lit8 v0, v0, 0x1

    .line 844
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 850
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1e
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    if-ge v0, v6, :cond_25

    :goto_24
    return v5

    :cond_25
    const/4 v5, 0x0

    goto :goto_24
.end method

.method public checkRestrictionsChallenge(Ljava/lang/String;)I
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1212
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1216
    :goto_6
    return v1

    .line 1213
    :catch_7
    move-exception v0

    .line 1214
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not check restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v1, -0x3

    goto :goto_6
.end method

.method public createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 708
    const/4 v3, 0x4

    invoke-virtual {p0, p2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 709
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_30

    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "skip_first_use_hints"

    const-string v5, "1"

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 713
    :try_start_15
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v3}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 714
    .local v1, "guestRestrictions":Landroid/os/Bundle;
    const-string/jumbo v3, "no_sms"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 715
    const-string/jumbo v3, "no_install_unknown_sources"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 716
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v1, v4}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_30} :catch_31

    .line 721
    .end local v1    # "guestRestrictions":Landroid/os/Bundle;
    :cond_30
    :goto_30
    return-object v0

    .line 717
    :catch_31
    move-exception v2

    .line 718
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not update guest restrictions"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 774
    :goto_6
    return-object v1

    .line 772
    :catch_7
    move-exception v0

    .line 773
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 738
    :try_start_1
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 739
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_b

    move-object v1, v3

    .line 748
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :goto_a
    return-object v1

    .line 742
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_b
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 743
    .local v2, "userRestrictions":Landroid/os/Bundle;
    invoke-static {v2}, Landroid/os/UserManager;->addDefaultUserRestrictions(Landroid/os/Bundle;)V

    .line 744
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v2, v5}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_a

    .line 746
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userRestrictions":Landroid/os/Bundle;
    :catch_1e
    move-exception v0

    .line 747
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v5, "Could not create a user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 748
    goto :goto_a
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 694
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 697
    :goto_6
    return-object v1

    .line 695
    :catch_7
    move-exception v0

    .line 696
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1155
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1159
    :goto_6
    return-object v1

    .line 1156
    :catch_7
    move-exception v0

    .line 1157
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get application restrictions for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1167
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1171
    :goto_a
    return-object v1

    .line 1168
    :catch_b
    move-exception v0

    .line 1169
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get application restrictions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "badgedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    .prologue
    .line 975
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 945
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 992
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 1264
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1268
    :goto_6
    return-object v1

    .line 1265
    :catch_7
    move-exception v0

    .line 1266
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set guest restrictions"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 922
    :goto_6
    return-object v1

    .line 920
    :catch_7
    move-exception v0

    .line 921
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get profile parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getProfiles(I)Ljava/util/List;
    .registers 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    .line 885
    :goto_7
    return-object v1

    .line 883
    :catch_8
    move-exception v0

    .line 884
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 664
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUserCount()I
    .registers 3

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 815
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .registers 6
    .param p1, "serialNumber"    # J

    .prologue
    .line 677
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    .line 678
    .local v0, "ident":I
    if-ltz v0, :cond_d

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getUserHandle()I
    .registers 2

    .prologue
    .line 415
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .registers 6
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 1138
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserHandle(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1142
    :goto_6
    return v1

    .line 1139
    :catch_7
    move-exception v0

    .line 1140
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get userHandle for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1067
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1070
    :goto_6
    return-object v1

    .line 1068
    :catch_7
    move-exception v0

    .line 1069
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the user icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 531
    :goto_6
    return-object v1

    .line 529
    :catch_7
    move-exception v0

    .line 530
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUserName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 429
    :goto_c
    return-object v1

    .line 427
    :catch_d
    move-exception v0

    .line 428
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    const-string v1, ""

    goto :goto_c
.end method

.method public getUserProfiles()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/UserHandle;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_a
    iget-object v6, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_30

    move-result-object v5

    .line 904
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 905
    .local v1, "info":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/os/UserHandle;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 906
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 900
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :catch_30
    move-exception v3

    .line 901
    .local v3, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v7, "Could not get user list"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    const/4 v2, 0x0

    .line 908
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/UserHandle;>;"
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_39
    return-object v2
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 553
    :goto_a
    return-object v1

    .line 551
    :catch_b
    move-exception v0

    .line 552
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user restrictions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_a
.end method

.method public getUserSerialNumber(I)I
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1124
    :goto_6
    return v1

    .line 1121
    :catch_7
    move-exception v0

    .line 1122
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get serial number for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getUsers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    .line 829
    :goto_7
    return-object v1

    .line 827
    :catch_8
    move-exception v0

    .line 828
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 5
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1009
    :goto_6
    return-object v1

    .line 1007
    :catch_7
    move-exception v0

    .line 1008
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public hasRestrictionsChallenge()Z
    .registers 4

    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->hasRestrictionsChallenge()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1234
    :goto_6
    return v1

    .line 1231
    :catch_7
    move-exception v0

    .line 1232
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not change restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 650
    :goto_a
    return v1

    .line 648
    :catch_b
    move-exception v0

    .line 649
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not check user restrictions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isGuestUser()Z
    .registers 3

    .prologue
    .line 469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 470
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isLinkedUser()Z
    .registers 4

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->isRestricted()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 459
    :goto_6
    return v1

    .line 457
    :catch_7
    move-exception v0

    .line 458
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not check if user is limited "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isManagedProfile()Z
    .registers 3

    .prologue
    .line 482
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 483
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isUserAGoat()Z
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.coffeestainstudios.goatsimulator"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 496
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 499
    :goto_e
    return v1

    .line 498
    :catch_f
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_e
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 512
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v1

    .line 515
    :goto_d
    return v1

    .line 514
    :catch_e
    move-exception v0

    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isUserSwitcherEnabled()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1096
    invoke-virtual {p0, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1097
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_9

    .line 1108
    :cond_8
    :goto_8
    return v5

    .line 1100
    :cond_9
    const/4 v2, 0x0

    .line 1101
    .local v2, "switchableUserCount":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1102
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1103
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1106
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_23
    iget-object v7, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "guest_user_enabled"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_38

    move v0, v6

    .line 1108
    .local v0, "guestEnabled":Z
    :goto_32
    if-gt v2, v6, :cond_36

    if-eqz v0, :cond_8

    :cond_36
    move v5, v6

    goto :goto_8

    .end local v0    # "guestEnabled":Z
    :cond_38
    move v0, v5

    .line 1106
    goto :goto_32
.end method

.method public markGuestForDeletion(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 787
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 790
    :goto_6
    return v1

    .line 788
    :catch_7
    move-exception v0

    .line 789
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not mark guest for deletion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeRestrictions()V
    .registers 4

    .prologue
    .line 1240
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->removeRestrictions()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1244
    :goto_5
    return-void

    .line 1241
    :catch_6
    move-exception v0

    .line 1242
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not change restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public removeUser(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1021
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->removeUser(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1024
    :goto_6
    return v1

    .line 1022
    :catch_7
    move-exception v0

    .line 1023
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove user "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1180
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1184
    :goto_9
    return-void

    .line 1181
    :catch_a
    move-exception v0

    .line 1182
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set application restrictions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 1252
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1256
    :goto_5
    return-void

    .line 1253
    :catch_6
    move-exception v0

    .line 1254
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set guest restrictions"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .registers 5
    .param p1, "newPin"    # Ljava/lang/String;

    .prologue
    .line 1194
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setRestrictionsChallenge(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1198
    :goto_6
    return v1

    .line 1195
    :catch_7
    move-exception v0

    .line 1196
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not change restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 808
    :goto_5
    return-void

    .line 805
    :catch_6
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not enable the profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1056
    :goto_5
    return-void

    .line 1053
    :catch_6
    move-exception v0

    .line 1054
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the user icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1038
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1042
    :goto_5
    return-void

    .line 1039
    :catch_6
    move-exception v0

    .line 1040
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the user name "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 603
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 604
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;)V

    .line 605
    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0, p3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 622
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 623
    invoke-virtual {p0, v0, p3}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 624
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 569
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 588
    :goto_9
    return-void

    .line 585
    :catch_a
    move-exception v0

    .line 586
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set user restrictions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
