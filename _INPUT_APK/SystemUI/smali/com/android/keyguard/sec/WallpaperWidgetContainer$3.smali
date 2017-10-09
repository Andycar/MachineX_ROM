.class Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WallpaperWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/WallpaperWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$300(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$200(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$100(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_0
    return-void
.end method
