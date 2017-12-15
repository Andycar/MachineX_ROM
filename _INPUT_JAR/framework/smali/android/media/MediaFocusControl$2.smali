.class Landroid/media/MediaFocusControl$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .registers 2

    .prologue
    .line 1070
    iput-object p1, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1072
    if-nez p2, :cond_3

    .line 1082
    :cond_2
    :goto_2
    return-void

    .line 1075
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1076
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1079
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1080
    iget-object v1, p0, Landroid/media/MediaFocusControl$2;->this$0:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$2200(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2
.end method
