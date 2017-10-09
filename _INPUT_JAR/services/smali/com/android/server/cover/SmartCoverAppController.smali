.class final Lcom/android/server/cover/SmartCoverAppController;
.super Ljava/lang/Object;
.source "SmartCoverAppController.java"


# static fields
.field static final PATH_PLAYSTORE:Ljava/lang/String; = "1market://details?id=<"

.field static final PATH_SAMSUNGAPPS:Ljava/lang/String; = "samsungapps://ProductDetail/<"

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SmartCoverAppController"

.field private static mContext:Landroid/content/Context;

.field private static mSmartCoverPackageName:Ljava/lang/String;

.field private static mSmartCoverServiceIntent:Landroid/content/Intent;

.field private static mSmartCoverServiceName:Ljava/lang/String;

.field private static packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mIsRegisterReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceName:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    .line 50
    new-instance v0, Lcom/android/server/cover/SmartCoverAppController$1;

    invoke-direct {v0}, Lcom/android/server/cover/SmartCoverAppController$1;-><init>()V

    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    .line 69
    const-string v0, "SmartCoverAppController"

    const-string v1, "SmartCoverMonitor constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-object p1, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->startSmartCoverService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 34
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->stopSmartCoverService()V

    return-void
.end method

.method private getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "smartCoverAppUri"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 135
    .local v1, "path":Ljava/lang/String;
    if-eqz p1, :cond_1e

    .line 136
    const-string v2, "1market://details?id=<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 137
    const-string v1, "1market://details?id=<"

    .line 142
    :cond_e
    :goto_e
    if-eqz v1, :cond_1e

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1e
    return-object v0

    .line 138
    :cond_1f
    const-string/jumbo v2, "samsungapps://ProductDetail/<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 139
    const-string/jumbo v1, "samsungapps://ProductDetail/<"

    goto :goto_e
.end method

.method private static startSmartCoverService()Z
    .registers 10

    .prologue
    .line 106
    sget-object v7, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 108
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    sget-object v7, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    const/16 v8, 0x84

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 109
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    const-string v7, "SmartCoverAppController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startSmartCoverService : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is installed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v4, :cond_82

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_82

    .line 111
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_39
    if-ge v2, v3, :cond_44

    aget-object v6, v0, v2

    .line 112
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    sput-object v7, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceName:Ljava/lang/String;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 114
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_44
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    sput-object v7, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    .line 115
    sget-object v7, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    sget-object v8, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    sget-object v9, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v7, "SmartCoverAppController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startSmartCoverService : start service - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v7, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_82} :catch_84

    .line 123
    .end local v0    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_82
    const/4 v7, 0x1

    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :goto_83
    return v7

    .line 119
    :catch_84
    move-exception v1

    .line 120
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SmartCoverAppController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startSmartCoverService : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not installed. So couldn\'t start service."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v7, 0x0

    goto :goto_83
.end method

.method private static stopSmartCoverService()V
    .registers 3

    .prologue
    .line 127
    const-string v0, "SmartCoverAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSmartCoverService : stop service - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 129
    return-void
.end method


# virtual methods
.method public smartCoverAttachStateChanged(ZLjava/lang/String;)V
    .registers 7
    .param p1, "attach"    # Z
    .param p2, "smartCoverAppUri"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v1, "SmartCoverAppController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartCoverAttachStateChanged : attach = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smartCoverAppUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p2}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    .line 77
    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    if-nez v1, :cond_36

    .line 78
    const-string v1, "SmartCoverAppController"

    const-string/jumbo v2, "smartCoverAttachStateChanged : package name is null. So couldn\'t do anything."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_35
    :goto_35
    return-void

    .line 81
    :cond_36
    const-string v1, "SmartCoverAppController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartCoverAttachStateChanged : package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz p1, :cond_87

    .line 85
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->startSmartCoverService()Z

    .line 87
    iget-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    if-nez v1, :cond_35

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    const-string v1, "SmartCoverAppController"

    const-string/jumbo v2, "smartCoverAttachStateChanged : register Receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    goto :goto_35

    .line 98
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_87
    const-string v1, "SmartCoverAppController"

    const-string/jumbo v2, "smartCoverAttachStateChanged : unregister Receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    .line 101
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->stopSmartCoverService()V

    goto :goto_35
.end method
