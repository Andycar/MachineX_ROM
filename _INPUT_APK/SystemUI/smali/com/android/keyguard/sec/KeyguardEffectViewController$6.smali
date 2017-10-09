.class Lcom/android/keyguard/sec/KeyguardEffectViewController$6;
.super Landroid/database/ContentObserver;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x12f3

    const/16 v2, 0x12f2

    const/16 v3, 0x12f1

    const/16 v1, 0x12f0

    .line 570
    if-nez p2, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 578
    :cond_3
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 583
    :cond_5
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "lockscreen_wallpaper_path_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 585
    :cond_6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    .line 589
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    iget-object v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 594
    :cond_8
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 595
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 600
    :cond_a
    const-string v0, "lockscreen_wallpaper_transparent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 602
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 605
    :cond_c
    const-string v0, "lockscreen_zoom_panning_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
