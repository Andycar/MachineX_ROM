.class Lcom/android/systemui/qs/tiles/PowerSavingTile$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 244
    :cond_0
    return-void
.end method
