.class Lcom/android/systemui/qs/tiles/MultiWindowTile$3;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MultiWindowTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$3;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$3;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->access$200(Lcom/android/systemui/qs/tiles/MultiWindowTile;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$3;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->access$200(Lcom/android/systemui/qs/tiles/MultiWindowTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$3;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->access$200(Lcom/android/systemui/qs/tiles/MultiWindowTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 148
    :cond_0
    return-void
.end method
