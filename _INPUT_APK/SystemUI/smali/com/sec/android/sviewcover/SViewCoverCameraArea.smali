.class public Lcom/sec/android/sviewcover/SViewCoverCameraArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverCameraArea.java"

# interfaces
.implements Lcom/sec/android/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# static fields
.field private static final MSG_MOVE_TO_HOME:I = 0x3ea

.field private static final MSG_START_CAMERA_ACTIVITY:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "SViewCoverCameraEffect"


# instance fields
.field private mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverCameraArea$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverCameraArea;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mHandler:Landroid/os/Handler;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverCameraArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverCameraArea;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->startCameraActivity()V

    return-void
.end method

.method private startCameraActivity()V
    .locals 6

    .prologue
    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 82
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverCameraEffect"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected moveToHome()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 46
    :cond_0
    return-void
.end method

.method public onActive(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 2
    .param p1, "cover"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "SViewCoverCameraEffect"

    const-string v1, "setCoverView(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    goto :goto_0
.end method
