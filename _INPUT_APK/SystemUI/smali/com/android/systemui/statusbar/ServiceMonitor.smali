.class public Lcom/android/systemui/statusbar/ServiceMonitor;
.super Ljava/lang/Object;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ServiceMonitor$SC;,
        Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;
    }
.end annotation


# static fields
.field public static final MSG_CHECK_BOUND:I = 0x5

.field public static final MSG_CONTINUE_START_SERVICE:I = 0x2

.field public static final MSG_PACKAGE_INTENT:I = 0x4

.field public static final MSG_SERVICE_DISCONNECTED:I = 0x6

.field public static final MSG_START_SERVICE:I = 0x1

.field public static final MSG_STOP_SERVICE:I = 0x3

.field private static final RECHECK_DELAY:I = 0x7d0

.field private static final WAIT_FOR_STOP:I = 0x1f4


# instance fields
.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDebug:Z

.field private final mHandler:Landroid/os/Handler;

.field private mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

.field private mServiceName:Landroid/content/ComponentName;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V
    .locals 2
    .param p1, "ownerTag"    # Ljava/lang/String;
    .param p2, "debug"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "settingKey"    # Ljava/lang/String;
    .param p5, "callbacks"    # Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ServiceMonitor$1;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/ServiceMonitor$2;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingObserver:Landroid/database/ContentObserver;

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ServiceMonitor$3;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ServiceMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    .line 164
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    .line 165
    iput-object p3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    .line 166
    iput-object p4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->startService()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->continueStartService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/ServiceMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->stopService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ServiceMonitor;->packageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->checkBound()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ServiceMonitor;->serviceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/ServiceMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/ServiceMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponentNameFromSetting()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/ServiceMonitor;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method private static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 272
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 280
    :goto_0
    return-object v4

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x7b

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, [Ljava/lang/String;

    .end local v3    # "v":Ljava/lang/Object;
    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 278
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private checkBound()V
    .locals 3

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBound mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->startService()V

    .line 264
    :cond_1
    return-void
.end method

.method private continueStartService()V
    .locals 5

    .prologue
    .line 236
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    const-string v3, "continueStartService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/ServiceMonitor$SC;-><init>(Lcom/android/systemui/statusbar/ServiceMonitor;Lcom/android/systemui/statusbar/ServiceMonitor$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 241
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;->onNoService()V

    .line 248
    :cond_2
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error binding to service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getComponentNameFromSetting()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "cn":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private packageIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 195
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageIntent intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/ServiceMonitor;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 206
    .local v1, "serviceEnabled":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->stopService()V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->scheduleCheckBound()V

    goto :goto_0

    .line 201
    .end local v1    # "serviceEnabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 209
    .restart local v1    # "serviceEnabled":Z
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->startService()V

    goto :goto_0
.end method

.method private scheduleCheckBound()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    return-void
.end method

.method private serviceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceDisconnected serviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServiceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->scheduleCheckBound()V

    .line 257
    :cond_1
    return-void
.end method

.method private startService()V
    .locals 5

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponentNameFromSetting()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    .line 225
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService mServiceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 228
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;->onNoService()V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mCallbacks:Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;->onServiceStartAttempt()J

    move-result-wide v0

    .line 231
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 216
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    const-string v2, "stopService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 218
    .local v0, "stopped":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mDebug:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mServiceConnection:Lcom/android/systemui/statusbar/ServiceMonitor$SC;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBound:Z

    .line 221
    return-void
.end method


# virtual methods
.method public start()V
    .locals 6

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mSettingObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/ServiceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method
