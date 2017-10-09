.class Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;
.super Landroid/database/ContentObserver;
.source "AirMotionEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/AirMotionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSettingObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionEnabler;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    .line 284
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 285
    iput-object p3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->mContext:Landroid/content/Context;

    .line 286
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->updateSwitch()V

    .line 300
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "air_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 295
    return-void
.end method
