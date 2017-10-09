.class public Lcom/android/systemui/LoadAverageService;
.super Landroid/app/Service;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/LoadAverageService$LoadView;,
        Lcom/android/systemui/LoadAverageService$CpuTracker;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 289
    new-instance v1, Lcom/android/systemui/LoadAverageService$LoadView;

    invoke-direct {v1, p0, p0}, Lcom/android/systemui/LoadAverageService$LoadView;-><init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    .line 290
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7df

    const/16 v4, 0x18

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 297
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 298
    const-string v1, "Load Average"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/systemui/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 300
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 306
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/systemui/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    .line 308
    return-void
.end method
