.class public Lcom/android/keyguard/sec/SecKeyguardClockView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$SettingsObserver;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    .line 269
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 270
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$SettingsObserver;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$001(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_clock_position"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$SettingsObserver;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    .line 292
    return-void
.end method
