.class Lcom/android/systemui/qs/tiles/AutoRotateTile$4;
.super Ljava/lang/Object;
.source "AutoRotateTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

.field final synthetic val$autorotate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;->val$autorotate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 253
    .local v1, "wm":Landroid/view/IWindowManager;
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;->val$autorotate:Z

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 271
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 258
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSetDefaultOrientationLandscapeMode:Z

    if-eqz v2, :cond_1

    .line 259
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v2, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v0    # "exc":Landroid/os/RemoteException;
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
