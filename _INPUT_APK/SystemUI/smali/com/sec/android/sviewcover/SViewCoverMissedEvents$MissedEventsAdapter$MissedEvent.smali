.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
.super Ljava/lang/Object;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedEvent"
.end annotation


# static fields
.field public static final TYPE_CALL:I = 0x1

.field public static final TYPE_MESSAGE:I


# instance fields
.field public callId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public id:J

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public photoUri:Ljava/lang/String;

.field public slotId:I

.field final synthetic this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

.field public time:J

.field public type:I

.field public unreadCount:I


# direct methods
.method private constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->this$1:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p2, "x1"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    return-void
.end method
