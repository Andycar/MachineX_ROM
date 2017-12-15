.class Lcom/android/server/FMRadioService$16;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 984
    const-string v1, "mute"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 985
    .local v0, "AllSoundOff":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllSoundOffReceiver :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 987
    if-ne v0, v4, :cond_2b

    .line 988
    const-string v1, "FM chip mute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v4}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 994
    :goto_2a
    return-void

    .line 991
    :cond_2b
    const-string v1, "FM chip unmute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Lcom/android/server/FMRadioService$16;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_2a
.end method
