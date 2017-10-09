.class Lcom/android/keyguard/sec/SecKeyguardClockView$3;
.super Landroid/database/ContentObserver;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, 0x12cc

    const/16 v1, 0x12cb

    .line 138
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 139
    if-nez p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v0, "location_name"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 147
    :cond_3
    const-string v0, "dualclock_menu_settings"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "homecity_timezone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lock_show_info"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
