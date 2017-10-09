.class Lcom/android/keyguard/sec/KeyguardEffectViewController$7;
.super Landroid/os/FileObserver;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x12f2

    .line 666
    sparse-switch p1, :sswitch_data_0

    .line 682
    :goto_0
    return-void

    .line 670
    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const-string v2, ""

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 673
    :sswitch_1
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "CLOSE_WRITE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 666
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method
