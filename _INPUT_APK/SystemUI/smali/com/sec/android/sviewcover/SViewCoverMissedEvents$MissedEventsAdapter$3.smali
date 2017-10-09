.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;
.super Landroid/database/ContentObserver;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->buildObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 432
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->notifyDataSetChanged()V

    .line 442
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->access$100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
