.class Lcom/android/systemui/qs/tiles/QuickConnectTile$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickConnectTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/QuickConnectTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/QuickConnectTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/QuickConnectTile;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile$1;->this$0:Lcom/android/systemui/qs/tiles/QuickConnectTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    return-void
.end method
