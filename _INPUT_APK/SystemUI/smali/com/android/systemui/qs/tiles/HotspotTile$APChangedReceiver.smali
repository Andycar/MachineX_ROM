.class public Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APChangedReceiver"
.end annotation


# instance fields
.field private mUsageTracker:Lcom/android/systemui/qs/UsageTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    const-class v1, Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$APChangedReceiver;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->trackUsage()V

    .line 107
    return-void
.end method
