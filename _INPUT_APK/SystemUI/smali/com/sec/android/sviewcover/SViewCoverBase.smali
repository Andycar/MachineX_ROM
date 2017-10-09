.class public Lcom/sec/android/sviewcover/SViewCoverBase;
.super Ljava/lang/Object;
.source "SViewCoverBase.java"


# static fields
.field private static final ACTION_CLEAR_COVER_REMOTEVIEWS_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final MOBILE_CARE_SCREEN_ON_TIMEOUT:I = 0x1388

.field private static final MSG_UPDATE_COVERSTATE:I = 0x2711

.field private static final MSG_UPDATE_MINI_COVERSTATE:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "SViewCoverBase"

.field private static final TYPE_SVIEW:I = 0x1

.field private static final TYPE_SVIEW_CHARGER:I = 0x3

.field private static mTimer:Ljava/util/Timer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mSHealthIntent:Landroid/content/Intent;

.field private mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mSViewMiniCover:Lcom/sec/android/sviewcover/SViewCoverMiniView;

.field private mTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverBase$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverBase$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverBase$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/sviewcover/SViewCoverBase$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverBase;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    if-nez v1, :cond_1

    .line 124
    const-string v1, "SViewCoverBase"

    const-string v2, "Start inflating view"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_view:I

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverView;

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 127
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSHealthIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "SViewCoverBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::::::::BroadcastReceiver : send() : shealth :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSHealthIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSHealthIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.sviewcover.ACCESS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 135
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSHealthIntent:Landroid/content/Intent;

    .line 138
    :cond_1
    const-string v1, "SViewCoverBase"

    const-string v2, "SViewCoverBase()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/sviewcover/SViewCoverBase;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSHealthIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/sviewcover/SViewCoverMiniView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mSViewMiniCover:Lcom/sec/android/sviewcover/SViewCoverMiniView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverBase;->requestDumpUpload()Z

    move-result v0

    return v0
.end method

.method private checkMCTimer(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 147
    .local v1, "isCoverOpen":Z
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 149
    .local v0, "coverType":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverBase;->stopMCScreenOnTimer()V

    .line 151
    if-eqz v1, :cond_1

    .line 152
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverBase;->startMCScreenOnTimer()V

    .line 156
    :cond_1
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestDumpUpload()Z
    .locals 3

    .prologue
    .line 192
    const-string v1, "com.samsung.mobilecare"

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "SViewCoverBase"

    const-string v2, "requestDumpUpload : Requesting dump upload to MC..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cover.intent.action.MOBILE_CARE_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    const/4 v1, 0x1

    .line 200
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 198
    :cond_0
    const-string v1, "SViewCoverBase"

    const-string v2, "requestDumpUpload : MC is not installed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method checkPermission()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public startMCScreenOnTimer()V
    .locals 4

    .prologue
    .line 159
    const-string v0, "SViewCoverBase"

    const-string v1, "startMCScreenOnTimer count = 5000"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverBase$3;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverBase$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTask:Ljava/util/TimerTask;

    .line 167
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTimer:Ljava/util/Timer;

    .line 169
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 170
    return-void
.end method

.method public stopMCScreenOnTimer()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "SViewCoverBase"

    const-string v1, "stopMCScreenOnTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTimer:Ljava/util/Timer;

    .line 178
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 220
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v1, "SViewCoverBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover BaseService updateCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverBase;->checkMCTimer(Lcom/samsung/android/cover/CoverState;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msgStateUpdate":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
