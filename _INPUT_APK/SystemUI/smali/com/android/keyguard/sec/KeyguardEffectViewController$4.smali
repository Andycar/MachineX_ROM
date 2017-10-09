.class Lcom/android/keyguard/sec/KeyguardEffectViewController$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x12f2

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "action":Ljava/lang/String;
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    :goto_1
    return-void

    .line 340
    :cond_2
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** don\'t update sliding image ***"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    :cond_3
    const-string v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-static {v1, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewController;Landroid/content/Context;)V

    goto :goto_0

    .line 345
    :cond_4
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
