.class Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;
.super Landroid/database/ContentObserver;
.source "KeyguardFestivalEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardFestivalEffect;->setContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "KeyguardFestivalEffect"

    const-string v5, "effect enabled change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "festival_charging_effect"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "current_festival_wallpaper_package"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "current_festival_wallpaper_class"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper"

    const/4 v7, -0x2

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1702(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    const-string v2, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContentObservers: mIsCommonDay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1700(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$000(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)I

    move-result v4

    invoke-static {v2, v4, v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;IZ)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const-string v4, "festival_effect_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "festival_effect_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$102(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    const/4 v1, 0x1

    :cond_6
    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEffect true: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v4, -0x1

    invoke-static {v2, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;I)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryFestivalToday(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->sendFestivalString()V

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, -0x1

    :cond_8
    const-string v2, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "festivalId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2, v0, v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$400(Lcom/android/keyguard/sec/KeyguardFestivalEffect;IZ)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$500(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "festival_effect_lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "festival_effect_lockscreen_wallpaper"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v2, v3

    :cond_a
    invoke-static {v4, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$902(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Z)Z

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v2, "current_festival_effect_package"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$300(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_festival_effect_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$1902(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2002(Lcom/android/keyguard/sec/KeyguardFestivalEffect;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "KeyguardFestivalEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEmergencyMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2200(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardFestivalEffect$4;->this$0:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->access$2100(Lcom/android/keyguard/sec/KeyguardFestivalEffect;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_e
    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_1
.end method
