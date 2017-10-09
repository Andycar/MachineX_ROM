.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsCache;,
        Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;,
        Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;,
        Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String;

.field private static final MULTISIM_DB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static final sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

.field private static final sKnownMutationsInFlight:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static sObserverInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;",
            ">;"
        }
    .end annotation
.end field

.field static final sRestrictedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureCloneToManagedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureGlobalKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemCloneToManagedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemGlobalKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SHARE_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mManagedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpenHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "value"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    .line 106
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    .line 108
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    .line 110
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v2, "global"

    invoke-direct {v1, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 116
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    .line 130
    const-string v1, "value"

    invoke-static {v1, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 134
    const-string v1, "_dummy"

    invoke-static {v1, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    .line 163
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    .line 164
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    .line 168
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    .line 169
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    invoke-static {v1}, Landroid/provider/Settings$System;->getNonLegacyMovedKeys(Ljava/util/HashSet;)V

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    .line 172
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "location_mode"

    const-string v3, "no_share_location"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "location_providers_allowed"

    const-string v3, "no_share_location"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "install_non_market_apps"

    const-string v3, "no_install_unknown_sources"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "adb_enabled"

    const-string v3, "no_debugging_features"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "package_verifier_enable"

    const-string v3, "ensure_verify_apps"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    const-string v2, "preferred_network_mode"

    const-string v3, "no_config_mobile_networks"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 185
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    sget-object v2, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    .line 188
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    sget-object v2, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    .line 745
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    .line 747
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_icon_1"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_icon_2"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "current_network"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_name_1"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "select_name_2"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "prefered_voice_call"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "prefered_video_call"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "is_sim_1"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "paging_mode"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "phone1_on"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "phone2_on"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_init_dialog_is_checked"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_reset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_inter_change"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_sim1_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_sim2_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_init_process"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_is_first"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "dsa_check_started_networkmanagement"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "paging_mode_dialog_is_checked"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "sim1_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->MULTISIM_DB:Ljava/util/HashSet;

    const-string v2, "sim2_value"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    .line 123
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    .line 194
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    .line 195
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    .line 1504
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/providers/settings/SettingsProvider;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$400()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private checkUserRestrictions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 363
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sRestrictedKeys:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "userRestriction":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission denial: user is restricted from changing this setting."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_0
    return-void
.end method

.method private checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V
    .locals 5
    .param p1, "args"    # Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    .prologue
    .line 352
    const-string v0, "secure"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "global"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    return-void
.end method

.method private ensureAndroidIdIsSet(I)Z
    .locals 19
    .param p1, "userHandle"    # I

    .prologue
    .line 636
    sget-object v5, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "value"

    aput-object v7, v6, v4

    const-string v7, "name=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "android_id"

    aput-object v9, v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    .line 642
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 643
    .local v17, "value":Ljava/lang/String;
    :goto_0
    if-nez v17, :cond_3

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 646
    .local v16, "user":Landroid/content/pm/UserInfo;
    if-nez v16, :cond_1

    .line 648
    const/4 v4, 0x0

    .line 676
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v16    # "user":Landroid/content/pm/UserInfo;
    :goto_1
    return v4

    .line 642
    .end local v17    # "value":Ljava/lang/String;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 651
    .restart local v16    # "user":Landroid/content/pm/UserInfo;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    .line 652
    .local v14, "random":Ljava/security/SecureRandom;
    invoke-virtual {v14}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    .line 653
    .local v13, "newAndroidIdValue":Ljava/lang/String;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v18, "values":Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "android_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v4, "value"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v15

    .line 657
    .local v15, "uri":Landroid/net/Uri;
    if-nez v15, :cond_2

    .line 658
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to generate new ANDROID_ID for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    const/4 v4, 0x0

    .line 676
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 661
    :cond_2
    :try_start_2
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dropbox"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/DropBoxManager;

    .line 667
    .local v12, "dbm":Landroid/os/DropBoxManager;
    if-eqz v12, :cond_3

    const-string v4, "restricted_profile_ssaid"

    invoke-virtual {v12, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 668
    const-string v4, "restricted_profile_ssaid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",restricted_profile_ssaid,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 674
    .end local v12    # "dbm":Landroid/os/DropBoxManager;
    .end local v13    # "newAndroidIdValue":Ljava/lang/String;
    .end local v14    # "random":Ljava/security/SecureRandom;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v4, 0x1

    .line 676
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v17    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private establishDbTracking(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 529
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/DatabaseHelper;

    .line 531
    .local v1, "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    if-nez v1, :cond_0

    .line 532
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    .end local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 533
    .restart local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 535
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v5, "system"

    invoke-direct {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 536
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v5, "secure"

    invoke-direct {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 537
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 539
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 552
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    monitor-enter v4

    .line 553
    :try_start_1
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 554
    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;-><init>(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)V

    .line 555
    .local v2, "observer":Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 556
    invoke-virtual {v2}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->startWatching()V

    .line 558
    .end local v2    # "observer":Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 560
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->ensureAndroidIdIsSet(I)Z

    .line 562
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    .line 563
    return-void

    .line 539
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 558
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "dbhelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V
    .locals 14
    .param p1, "dbHelper"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "cache"    # Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 603
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "value"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "201"

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 609
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->evictAll()V

    .line 611
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    .line 612
    const/4 v12, 0x0

    .line 613
    .local v12, "rows":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    add-int/lit8 v12, v12, 0x1

    .line 615
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 616
    .local v11, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 617
    .local v13, "value":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v13}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "rows":I
    .end local v13    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 631
    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 619
    .restart local v12    # "rows":I
    :cond_0
    const/16 v2, 0xc8

    if-le v12, v2, :cond_1

    .line 622
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    .line 629
    :cond_1
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 633
    return-void
.end method

.method private fullyPopulateCaches(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 585
    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;

    .line 587
    .local v0, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    monitor-exit p0

    .line 588
    if-nez v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 587
    .end local v0    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 593
    .restart local v0    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :cond_0
    if-nez p1, :cond_1

    .line 594
    const-string v1, "global"

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    .line 596
    :cond_1
    const-string v2, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    .line 597
    const-string v2, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    goto :goto_0
.end method

.method private getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1601
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edmUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v7, -0x1

    .line 1604
    .local v7, "ret":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1605
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1606
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1608
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1609
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    const/4 v7, 0x1

    .line 1616
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1619
    :cond_0
    :goto_1
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return v7

    .line 1612
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1614
    :catch_0
    move-exception v0

    .line 1616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1624
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edmUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_0

    .line 1627
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1629
    :cond_0
    const/4 v8, -0x1

    .line 1630
    .local v8, "ret":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1631
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1632
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1634
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1635
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1636
    const/4 v8, 0x1

    .line 1642
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1645
    :cond_1
    :goto_2
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    return v8

    .line 1638
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1640
    :catch_0
    move-exception v0

    .line 1642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;",
            ">;)",
            "Lcom/android/providers/settings/SettingsProvider$SettingsCache;"
        }
    .end annotation

    .prologue
    .line 682
    .local p2, "which":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/providers/settings/SettingsProvider$SettingsCache;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    .line 683
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method private getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;
    .locals 8
    .param p1, "callingUser"    # I

    .prologue
    .line 688
    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_0

    .line 690
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uid rather than user handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 696
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 699
    .local v4, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 700
    :try_start_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/settings/DatabaseHelper;

    .line 701
    .local v2, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    if-nez v2, :cond_1

    .line 703
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->establishDbTracking(I)V

    .line 704
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 705
    :try_start_3
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/providers/settings/DatabaseHelper;

    move-object v2, v0

    .line 706
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 710
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 701
    .end local v2    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 710
    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 706
    .restart local v2    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "rowId"    # J

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 280
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    .local v1, "table":Ljava/lang/String;
    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    :cond_1
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 289
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_2
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 24
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1303
    .local v14, "oldId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v16

    .line 1304
    .local v16, "personaIds":[I
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_2

    .line 1305
    move-object/from16 v6, v16

    .local v6, "arr$":[I
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget v13, v6, v10

    .line 1306
    .local v13, "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/os/PersonaManager;->settingSyncAllowed(I)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1307
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v7

    .line 1308
    .local v7, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v21, "value"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1309
    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1310
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 1305
    .end local v7    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v20    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1314
    .restart local v7    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_1
    sget-object v21, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1315
    .local v12, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1316
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v9

    .line 1317
    .local v9, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v9}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1318
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 1319
    .local v18, "rowId":J
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1320
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_0

    .line 1322
    move-object/from16 v0, p3

    invoke-static {v7, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 1324
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object v17

    .line 1325
    .local v17, "url_for_persona":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    goto :goto_1

    .line 1329
    .end local v6    # "arr$":[I
    .end local v7    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13    # "personaId":I
    .end local v17    # "url_for_persona":Landroid/net/Uri;
    .end local v18    # "rowId":J
    .end local v20    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1331
    .end local v14    # "oldId":J
    .end local v16    # "personaIds":[I
    :cond_3
    return-void
.end method

.method private insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "desiredUserHandle"    # I

    .prologue
    .line 1204
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1205
    .local v4, "callingUser":I
    move/from16 v0, p3

    if-eq v4, v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v14, "Not permitted to access settings for other users"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_0
    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 1215
    .local v2, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v12, "favorites"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1216
    const/4 v12, 0x0

    .line 1296
    :goto_0
    return-object v12

    .line 1220
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1221
    const/4 v12, 0x0

    goto :goto_0

    .line 1227
    :cond_2
    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1228
    .local v8, "name":Ljava/lang/String;
    const-string v12, "location_providers_allowed"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1229
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/settings/SettingsProvider;->parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    .line 1234
    :cond_3
    if-eqz v8, :cond_6

    .line 1235
    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1236
    :cond_4
    const-string v12, "global"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1239
    :cond_5
    const-string v12, "global"

    iput-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 1244
    :cond_6
    const-string v12, "system"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "allow_volte_provisioning"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1245
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    .line 1246
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Permission denial: Modifying allow_volte_provisioning requires com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1252
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 1254
    move/from16 v0, p3

    invoke-direct {p0, v8, v0}, Lcom/android/providers/settings/SettingsProvider;->checkUserRestrictions(Ljava/lang/String;I)V

    .line 1258
    const-string v12, "global"

    iget-object v13, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1259
    const/16 p3, 0x0

    .line 1268
    :cond_8
    :goto_1
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {p0, v0, v12}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v3

    .line 1269
    .local v3, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v12, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1270
    .local v9, "value":Ljava/lang/String;
    invoke-static {v3, v8, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1271
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_0

    .line 1260
    .end local v3    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-eqz v12, :cond_a

    const/16 v12, 0x64

    move/from16 v0, p3

    if-lt v0, v12, :cond_a

    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1261
    const/16 p3, 0x0

    .line 1262
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v12, v0, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 1263
    :cond_a
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-eqz v12, :cond_8

    if-nez p3, :cond_8

    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1264
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v12, v0, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->insertForPersona(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 1275
    .restart local v3    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_b
    monitor-enter p0

    .line 1276
    :try_start_0
    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1277
    .local v7, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    if-eqz v7, :cond_c

    .line 1279
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1281
    :cond_c
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v6

    .line 1282
    .local v6, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v6}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1283
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v12, v2, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 1284
    .local v10, "rowId":J
    if-eqz v7, :cond_d

    .line 1285
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1287
    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_e

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1277
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v7    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v10    # "rowId":J
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 1289
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .restart local v7    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v10    # "rowId":J
    :cond_e
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 1294
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v10, v11}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    .line 1295
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    move-object/from16 v12, p1

    .line 1296
    goto/16 :goto_0
.end method

.method private isAirViewRelated(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1797
    const-string v1, "air_view_master_onoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return v0

    .line 1800
    :cond_1
    const-string v1, "finger_air_view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1803
    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1806
    const-string v1, "finger_air_view_highlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1809
    const-string v1, "pen_hovering"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangeAllowed(Landroid/content/ContentValues;I)Z
    .locals 13
    .param p1, "initialValues"    # Landroid/content/ContentValues;
    .param p2, "userId"    # I

    .prologue
    .line 1667
    if-nez p1, :cond_0

    .line 1668
    const/4 v8, 0x1

    .line 1784
    :goto_0
    return v8

    .line 1672
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1673
    .local v2, "callingUid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "args_callingUid":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, "args_usedId":Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1676
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1678
    .local v6, "selectionArgs_widgetView":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1680
    .local v5, "selectionArgs_shortcutView":Ljava/lang/String;
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_1

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1686
    const/4 v8, 0x0

    goto :goto_0

    .line 1687
    :cond_1
    if-eqz v3, :cond_2

    const-string v8, "install_non_market_apps"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isNonMarketAppAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 1691
    const/4 v8, 0x0

    goto :goto_0

    .line 1692
    :cond_2
    if-eqz v3, :cond_5

    const-string v8, "location_providers_allowed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1693
    const-string v8, "value"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1694
    .local v7, "value":Ljava/lang/String;
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 v4, 0x0

    .line 1696
    .local v4, "provider":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 1697
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1699
    :cond_3
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "provider = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    if-eqz v4, :cond_4

    const-string v8, "content://com.sec.knox.provider/LocationPolicy"

    const-string v9, "isLocationProviderBlockedAsUser"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1704
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1706
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1709
    .end local v4    # "provider":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    const-string v8, "always_finish_activities"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isKillingActivitiesOnLeaveAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 1713
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1714
    :cond_6
    if-eqz v3, :cond_9

    const-string v8, "voice_input_control"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "wake_up_lock_screen"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_7
    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isSVoiceAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isMicrophoneEnabledAsUser"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "false"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    .line 1721
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1722
    :cond_9
    if-eqz v3, :cond_a

    const-string v8, "kg_multiple_lockscreen"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isLockScreenViewAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a

    .line 1726
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1727
    :cond_a
    if-eqz v3, :cond_b

    const-string v8, "lock_screen_shortcut"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isLockScreenViewAllowed"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b

    .line 1731
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1732
    :cond_b
    if-eqz v3, :cond_c

    const-string v8, "mock_location"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v9, "isMockLocationEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c

    .line 1736
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1739
    :cond_c
    if-eqz v3, :cond_d

    const-string v8, "airplane_mode_on"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v9, "isAirplaneModeAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "true"

    aput-object v12, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_d

    .line 1743
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1744
    :cond_d
    if-eqz v3, :cond_f

    const-string v8, "global_http_proxy_host"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "global_http_proxy_port"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "global_http_proxy_exclusion_list"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "global_proxy_pac_url"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    const-string v8, "FirewallPolicy"

    const-string v9, "isGlobalProxyAllowed"

    invoke-direct {p0, v8, v9}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_f

    .line 1750
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1752
    :cond_f
    if-eqz v3, :cond_10

    const-string v8, "show_password"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v9, "isPasswordVisibilityEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_10

    .line 1756
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1757
    :cond_10
    if-eqz v3, :cond_11

    const-string v8, "multi_window_enabled"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isMultiWindowModeAllowedAsUser"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_11

    .line 1761
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1762
    :cond_11
    if-eqz v3, :cond_12

    const-string v8, "toolbox_onoff"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isKioskModeEnabled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    .line 1766
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1768
    :cond_12
    if-eqz v3, :cond_13

    const-string v8, "air_button_onoff"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_13

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isAirCommandModeAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_13

    .line 1774
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1775
    :cond_13
    if-eqz v3, :cond_14

    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider;->isAirViewRelated(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_14

    const-string v8, "content://com.sec.knox.provider2/KioskMode"

    const-string v9, "isAirViewModeAllowed"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_14

    .line 1781
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1784
    :cond_14
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "callingUser"    # I

    .prologue
    const/4 v2, 0x0

    .line 779
    monitor-enter p0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit p0

    move v1, v2

    .line 786
    :goto_0
    return v1

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 782
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_1

    .line 783
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 787
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 781
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 786
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method private lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .param p1, "dbHelper"    # Lcom/android/providers/settings/DatabaseHelper;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "cache"    # Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 977
    if-nez p3, :cond_1

    .line 978
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache is null for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v13, 0x0

    .line 1015
    :cond_0
    :goto_0
    return-object v13

    .line 981
    :cond_1
    monitor-enter p3

    .line 982
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    .line 983
    .local v13, "value":Landroid/os/Bundle;
    if-eqz v13, :cond_2

    .line 984
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v13, v3, :cond_3

    .line 985
    monitor-exit p3

    goto :goto_0

    .line 997
    .end local v13    # "value":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 988
    .restart local v13    # "value":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 995
    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .end local v13    # "value":Landroid/os/Bundle;
    monitor-exit p3

    goto :goto_0

    .line 997
    .restart local v13    # "value":Landroid/os/Bundle;
    :cond_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    invoke-virtual {p1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1000
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 1002
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_2
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v5, "name=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1004
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1005
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1006
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v13

    .line 1012
    .end local v13    # "value":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v13    # "value":Landroid/os/Bundle;
    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1014
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1015
    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v12

    .line 1009
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v3, "SettingsProvider"

    const-string v4, "settings lookup error"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1010
    const/4 v13, 0x0

    .line 1012
    .end local v13    # "value":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v13    # "value":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3
.end method

.method private parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 15
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "desiredUser"    # I

    .prologue
    .line 1132
    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1133
    .local v14, "value":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1134
    .local v11, "newProviders":Ljava/lang/String;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 1135
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1136
    .local v12, "prefix":C
    const/16 v1, 0x2b

    if-eq v12, v1, :cond_0

    const/16 v1, 0x2d

    if-ne v12, v1, :cond_5

    .line 1138
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1141
    const-string v13, ""

    .line 1142
    .local v13, "providers":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v3, v1

    .line 1143
    .local v3, "columns":[Ljava/lang/String;
    const-string v4, "name=\'location_providers_allowed\'"

    .line 1144
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8

    .line 1145
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1147
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1148
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 1150
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1156
    :cond_1
    :goto_0
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1157
    .local v10, "index":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    add-int v9, v10, v1

    .line 1159
    .local v9, "end":I
    if-lez v10, :cond_2

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/4 v10, -0x1

    .line 1160
    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_3

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    const/4 v10, -0x1

    .line 1162
    :cond_3
    const/16 v1, 0x2b

    if-ne v12, v1, :cond_8

    if-gez v10, :cond_8

    .line 1164
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 1165
    move-object v11, v14

    .line 1187
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 1188
    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "end":I
    .end local v10    # "index":I
    .end local v12    # "prefix":C
    .end local v13    # "providers":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 1150
    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "prefix":C
    .restart local v13    # "providers":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1152
    :cond_6
    if-eqz v8, :cond_1

    .line 1153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1167
    .restart local v9    # "end":I
    .restart local v10    # "index":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1169
    :cond_8
    const/16 v1, 0x2d

    if-ne v12, v1, :cond_b

    if-ltz v10, :cond_b

    .line 1172
    if-lez v10, :cond_a

    .line 1173
    add-int/lit8 v10, v10, -0x1

    .line 1178
    :cond_9
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1179
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1174
    :cond_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_9

    .line 1175
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1184
    :cond_b
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 18
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;
    .param p6, "forUser"    # I

    .prologue
    .line 1026
    new-instance v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v11, v0, v1, v2}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1028
    .local v11, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v5, "global"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v14

    .line 1030
    .local v14, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v14}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1037
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "favorites"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1038
    const/16 v17, 0x0

    .line 1065
    :goto_1
    return-object v17

    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    :cond_0
    move/from16 v5, p6

    .line 1028
    goto :goto_0

    .line 1039
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    :cond_1
    const-string v5, "old_favorites"

    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1040
    const-string v5, "favorites"

    iput-object v5, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 1041
    const-string v5, "PRAGMA table_info(favorites);"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1042
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 1043
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    const/16 v16, 0x1

    .line 1044
    .local v16, "exists":Z
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1045
    if-nez v16, :cond_4

    const/16 v17, 0x0

    goto :goto_1

    .line 1043
    .end local v16    # "exists":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 1047
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 1051
    .end local v13    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1052
    .local v3, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v5, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1054
    iget-object v6, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1057
    .local v17, "ret":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, v17

    check-cast v0, Landroid/database/AbstractCursor;

    move-object v12, v0

    .line 1058
    .local v12, "c":Landroid/database/AbstractCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v12, v5, v0, v1}, Landroid/database/AbstractCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1059
    .end local v12    # "c":Landroid/database/AbstractCursor;
    :catch_0
    move-exception v15

    .line 1062
    .local v15, "e":Ljava/lang/ClassCastException;
    const-string v5, "SettingsProvider"

    const-string v6, "Incompatible cursor derivation!"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    throw v15
.end method

.method private sendNotify(Landroid/net/Uri;I)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userHandle"    # I

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "backedUpDataChanged":Z
    const/4 v6, 0x0

    .local v6, "property":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 307
    .local v7, "table":Ljava/lang/String;
    const-string v10, "global"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 308
    .local v1, "isGlobal":Z
    const-string v10, "system"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 309
    const-string v6, "sys.settings_system_version"

    .line 310
    const/4 v0, 0x1

    .line 319
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 320
    const-wide/16 v10, 0x0

    invoke-static {v6, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    .line 322
    .local v8, "version":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .end local v8    # "version":J
    :cond_1
    if-eqz v0, :cond_2

    .line 327
    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v10}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 331
    :cond_2
    const-string v10, "notify"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "notify":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v10, "true"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 333
    :cond_3
    if-eqz v1, :cond_7

    const/4 v3, -0x1

    .line 334
    .local v3, "notifyTarget":I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 336
    .local v4, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, p1, v11, v12, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    .end local v3    # "notifyTarget":I
    .end local v4    # "oldId":J
    :cond_4
    return-void

    .line 311
    .end local v2    # "notify":Ljava/lang/String;
    :cond_5
    const-string v10, "secure"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 312
    const-string v6, "sys.settings_secure_version"

    .line 313
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :cond_6
    if-eqz v1, :cond_0

    .line 315
    const-string v6, "sys.settings_global_version"

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .restart local v2    # "notify":Ljava/lang/String;
    :cond_7
    move/from16 v3, p2

    .line 333
    goto :goto_1

    .line 338
    .restart local v3    # "notifyTarget":I
    .restart local v4    # "oldId":J
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 970
    .local p2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAsyncCachePopulation(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 580
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;-><init>(Lcom/android/providers/settings/SettingsProvider;I)V

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$CachePrefetchThread;->start()V

    .line 581
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1082
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1084
    .local v2, "callingUser":I
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 1085
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v8, "favorites"

    iget-object v9, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1086
    const/4 v8, 0x0

    .line 1119
    :cond_0
    :goto_0
    return v8

    .line 1088
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 1089
    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    .line 1092
    .local v1, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    monitor-enter p0

    .line 1093
    :try_start_0
    sget-object v8, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1094
    .local v6, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    if-eqz v6, :cond_2

    .line 1096
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1098
    :cond_2
    const-string v8, "global"

    iget-object v9, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    .line 1100
    .local v4, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1101
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1103
    :try_start_1
    array-length v7, p2

    .line 1104
    .local v7, "numValues":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_5

    .line 1105
    aget-object v8, p2, v5

    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/android/providers/settings/SettingsProvider;->checkUserRestrictions(Ljava/lang/String;I)V

    .line 1106
    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v10, p2, v5

    invoke-virtual {v3, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    const/4 v8, 0x0

    .line 1112
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1113
    if-eqz v6, :cond_0

    .line 1114
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 1094
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v5    # "i":I
    .end local v6    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v7    # "numValues":I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v6    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3
    move v8, v2

    .line 1098
    goto :goto_1

    .line 1107
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .restart local v5    # "i":I
    .restart local v7    # "numValues":I
    :cond_4
    :try_start_3
    aget-object v8, p2, v5

    invoke-static {v1, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 1104
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1110
    :cond_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1112
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1113
    if-eqz v6, :cond_6

    .line 1114
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1118
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    .line 1119
    array-length v8, p2

    goto :goto_0

    .line 1112
    .end local v5    # "i":I
    .end local v7    # "numValues":I
    :catchall_1
    move-exception v8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1113
    if-eqz v6, :cond_7

    .line 1114
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_7
    throw v8
.end method

.method public cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .param p1, "callingUser"    # I
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 715
    const-string v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    .line 718
    :cond_0
    const-string v0, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getOrConstructCache(ILandroid/util/SparseArray;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    goto :goto_0

    .line 724
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 795
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 796
    .local v10, "callingUser":I
    if-eqz p3, :cond_0

    .line 797
    const-string v2, "_user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 798
    .local v4, "reqUser":I
    if-eq v4, v10, :cond_0

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "get/set setting for user"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 813
    .end local v4    # "reqUser":I
    :cond_0
    const-string v2, "GET_system"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 816
    if-eqz v10, :cond_1

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    const/4 v10, 0x0

    .line 820
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v11

    .line 821
    .local v11, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 822
    .local v9, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v2, "system"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v2, v9, v1}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 962
    .end local v9    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v11    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :goto_0
    return-object v2

    .line 824
    :cond_2
    const-string v2, "GET_secure"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 829
    const-string v2, "location_providers_allowed"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_share_location"

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 832
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 834
    :cond_3
    const/4 v10, 0x0

    .line 836
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v11

    .line 837
    .restart local v11    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 838
    .restart local v9    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v2, "secure"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v2, v9, v1}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 840
    .end local v9    # "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .end local v11    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :cond_5
    const-string v2, "GET_global"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 844
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v2

    const-string v3, "global"

    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sGlobalCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Lcom/android/providers/settings/DatabaseHelper;Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 850
    :cond_6
    if-nez p3, :cond_7

    const/4 v14, 0x0

    .line 855
    .local v14, "newValue":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 857
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Permission denial: writing to settings requires %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "android.permission.WRITE_SETTINGS"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 850
    .end local v14    # "newValue":Ljava/lang/String;
    :cond_7
    const-string v2, "value"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 874
    .restart local v14    # "newValue":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 876
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 880
    :cond_9
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 881
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v2, "value"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v2, "PUT_system"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 889
    if-eqz v10, :cond_a

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 892
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 894
    :cond_a
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v10}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    .line 896
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 900
    .local v16, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_2
    if-ltz v13, :cond_c

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_b

    .line 906
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :cond_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 911
    :cond_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    .end local v13    # "i":I
    .end local v16    # "token":J
    :cond_d
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 911
    .restart local v16    # "token":J
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 914
    .end local v16    # "token":J
    :cond_e
    const-string v2, "PUT_secure"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 920
    if-eqz v10, :cond_f

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v2, v1}, Lcom/android/providers/settings/SettingsProvider;->shouldShadowParentProfile(ILjava/util/HashSet;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 923
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 925
    :cond_f
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v10}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    .line 927
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedKeys:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 931
    .restart local v16    # "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .restart local v13    # "i":I
    :goto_4
    if-ltz v13, :cond_11

    .line 937
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_10

    .line 938
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
    :cond_10
    :goto_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 941
    :catch_0
    move-exception v12

    .line 943
    .local v12, "e":Ljava/lang/SecurityException;
    :try_start_3
    const-string v3, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot clone request \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' with value \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' to managed profile (id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 949
    .end local v12    # "e":Ljava/lang/SecurityException;
    .end local v13    # "i":I
    :catchall_1
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .restart local v13    # "i":I
    :cond_11
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 952
    .end local v13    # "i":I
    .end local v16    # "token":J
    :cond_12
    const-string v2, "PUT_global"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 957
    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v10}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    goto/16 :goto_3

    .line 959
    :cond_13
    const-string v2, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call() with invalid method: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1336
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1338
    .local v1, "callingUser":I
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1339
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v6, "favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1340
    const/4 v2, 0x0

    .line 1367
    :goto_0
    return v2

    .line 1341
    :cond_0
    const-string v6, "old_favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1342
    const-string v6, "favorites"

    iput-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 1346
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 1349
    monitor-enter p0

    .line 1350
    :try_start_0
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1351
    .local v5, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    if-eqz v5, :cond_2

    .line 1353
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1355
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    .line 1356
    .local v4, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1357
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1358
    .local v2, "count":I
    if-eqz v5, :cond_3

    .line 1359
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1361
    :cond_3
    if-lez v2, :cond_4

    .line 1362
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/providers/settings/SettingsProvider;->invalidateCache(ILjava/lang/String;)V

    .line 1363
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    .line 1365
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    goto :goto_0

    .line 1343
    .end local v2    # "count":I
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v5    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_5
    const-string v6, "global"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1344
    const/4 v1, 0x0

    goto :goto_1

    .line 1351
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1072
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1073
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1198
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCache(ILjava/lang/String;)V
    .locals 2
    .param p1, "callingUser"    # I
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->cacheForTable(ILjava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 733
    .local v0, "cache":Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_0

    .line 740
    :goto_0
    return-void

    .line 736
    :cond_0
    monitor-enter v0

    .line 737
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->evictAll()V

    .line 738
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->access$302(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Z)Z

    .line 739
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 421
    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 422
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 425
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 426
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v2, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 432
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    .line 433
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-static {v2}, Landroid/os/PersonaPolicyManager;->getKnoxKeys(Ljava/util/HashSet;)V

    .line 438
    :cond_1
    const/4 v2, -0x1

    const/16 v3, 0x17

    invoke-virtual {p0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->setAppOps(II)V

    .line 439
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->establishDbTracking(I)V

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v3, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->onProfilesChanged()V

    .line 462
    const/4 v2, 0x1

    return v2
.end method

.method onProfilesChanged()V
    .locals 3

    .prologue
    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    .line 504
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 506
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 513
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mManagedProfiles:Ljava/util/List;

    .line 519
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 480
    monitor-enter p0

    .line 483
    :try_start_0
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 484
    .local v0, "observer":Landroid/os/FileObserver;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 486
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 490
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 491
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 492
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->onProfilesChanged()V

    .line 494
    monitor-exit p0

    .line 495
    return-void

    .line 494
    .end local v0    # "observer":Landroid/os/FileObserver;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1452
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    .line 1454
    .local v9, "ringtoneType":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    .line 1455
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1458
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 1460
    .local v10, "soundUri":Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 1462
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 1463
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    const/4 v1, 0x0

    .line 1466
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1467
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "soundUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 1468
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "authority":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v10    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1474
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :try_start_1
    invoke-super {p0, v10, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1475
    :catch_1
    move-exception v8

    .line 1482
    .local v8, "ex":Ljava/io/FileNotFoundException;
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 1483
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 1486
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1100008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 1492
    .end local v6    # "authority":Ljava/lang/String;
    .end local v8    # "ex":Ljava/io/FileNotFoundException;
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 1496
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "soundUri":Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1424
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    .line 1426
    .local v2, "ringtoneType":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1427
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1430
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1432
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1434
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, "authority":Ljava/lang/String;
    const-string v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1436
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1441
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :goto_0
    return-object v4

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 1020
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->queryForUser(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1379
    .local v1, "callingUser":I
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1380
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v6, "favorites"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return v2

    .line 1382
    :cond_1
    const-string v6, "global"

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1383
    const/4 v1, 0x0

    .line 1385
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 1386
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/providers/settings/SettingsProvider;->checkUserRestrictions(Ljava/lang/String;I)V

    .line 1389
    invoke-direct {p0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1395
    monitor-enter p0

    .line 1396
    :try_start_0
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1397
    .local v5, "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    if-eqz v5, :cond_3

    .line 1399
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1401
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->getOrEstablishDatabase(I)Lcom/android/providers/settings/DatabaseHelper;

    move-result-object v4

    .line 1402
    .local v4, "dbH":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1403
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v6, p2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1404
    .local v2, "count":I
    if-eqz v5, :cond_4

    .line 1405
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1407
    :cond_4
    if-lez v2, :cond_5

    .line 1408
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/providers/settings/SettingsProvider;->invalidateCache(ILjava/lang/String;)V

    .line 1409
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;I)V

    .line 1411
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation(I)V

    goto :goto_0

    .line 1397
    .end local v2    # "count":I
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbH":Lcom/android/providers/settings/DatabaseHelper;
    .end local v5    # "mutationCount":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
