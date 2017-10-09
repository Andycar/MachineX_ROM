.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;
.super Ljava/lang/Object;
.source "SViewCoverMissedEvents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .locals 0

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1471
    return-void
.end method
