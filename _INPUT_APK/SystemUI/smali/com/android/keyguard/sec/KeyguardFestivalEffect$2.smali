.class Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardFestivalEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardFestivalEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.bst.action.DATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.android.app.themechooser.HOME_THEME_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.FESTIVAL_EFFECT_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$700(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$600(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$800(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryFestivalToday(Landroid/content/ContentResolver;)I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalString()V

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$900(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4, v1, v6}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;IZ)V

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1000(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_3
    const-string v4, "com.sec.android.app.themechooser.HOME_THEME_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_festival_wallpaper_package"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "KeyguardFestivalEffect"

    const-string v5, "onReceive: putString CURRENT_FESTIVAL_WALLPAPER_PACKAGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, -0x2

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getCurrentSeason()I

    move-result v5

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getCurrentSeason()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1302(Lcom/android/keyguard/sec/KeyguardFestivalEffect;I)I

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4, v6}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    goto :goto_0

    :cond_7
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1000(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4, v6}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    goto :goto_0

    :cond_8
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1000(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v4

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4, v7}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->resumeAnimation()V

    goto :goto_0

    :cond_9
    const-string v4, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$2;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "KeyguardFestivalEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " receive festivalString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
