.class final Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 2

    .prologue
    .line 349
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
    .param p2, "x1"    # Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 355
    const-string v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 356
    .local v1, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 357
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    .line 387
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_23
    :goto_23
    return-void

    .line 360
    :cond_24
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 361
    const-string v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 362
    .restart local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 363
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    .line 364
    :cond_41
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_23

    .line 367
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_47
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 368
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_23

    .line 371
    :cond_55
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 372
    iget-object v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v5, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    goto :goto_23

    .line 375
    :cond_63
    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 376
    iget-object v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    const-string v6, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z
    invoke-static {v5, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    .line 377
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_multi_window_on_intent()V
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_23

    .line 380
    :cond_7c
    const-string v6, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 381
    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_96

    move v4, v5

    :cond_96
    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z
    invoke-static {v6, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$602(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 383
    .local v2, "time":J
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 384
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_23
.end method
