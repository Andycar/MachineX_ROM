.class Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;
.super Landroid/content/BroadcastReceiver;
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
    .line 312
    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "WallpaperWidgetContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intentAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;->this$0:Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->access$900(Lcom/android/keyguard/sec/WallpaperWidgetContainer;Z)V

    .line 318
    return-void
.end method
