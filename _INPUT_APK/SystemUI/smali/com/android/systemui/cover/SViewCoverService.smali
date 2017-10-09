.class public Lcom/android/systemui/cover/SViewCoverService;
.super Landroid/app/Service;
.source "SViewCoverService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SViewCoverService"


# instance fields
.field private mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Lcom/android/systemui/cover/SViewCoverService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/SViewCoverService$1;-><init>(Lcom/android/systemui/cover/SViewCoverService;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cover/SViewCoverService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cover/SViewCoverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/cover/SViewCoverService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V

    return-void
.end method

.method private getStatusBar()V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/cover/SViewCoverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 124
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    if-nez v0, :cond_1

    .line 125
    const-string v1, "SViewCoverService"

    const-string v2, "app==null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v1, "CoverUI"

    const-string v2, "onCreate() - app is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-class v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-nez v1, :cond_0

    .line 130
    const-string v1, "CoverUI"

    const-string v2, "onCreate() - mBaseStatusBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const-string v0, "CoverUI"

    const-string v1, "SViewCoverService onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService;->mBinder:Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "CoverUI"

    const-string v1, "SViewCoverService onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V

    .line 50
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v2, "CoverUI"

    const-string v3, "SViewCoverService onUnbind() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v2, "cover"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 63
    .local v0, "coverManager":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SViewCoverService"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
