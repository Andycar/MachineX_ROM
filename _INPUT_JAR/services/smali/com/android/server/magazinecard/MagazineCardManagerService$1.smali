.class Lcom/android/server/magazinecard/MagazineCardManagerService$1;
.super Landroid/os/Handler;
.source "MagazineCardManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/magazinecard/MagazineCardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/magazinecard/MagazineCardManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/magazinecard/MagazineCardManagerService;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService$1;->this$0:Lcom/android/server/magazinecard/MagazineCardManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_6a

    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    :goto_8
    return-void

    .line 53
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .local v1, "command":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 56
    .local v0, "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const-string v4, "MagazineCardManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SEND_CARD_UPDATED_NOTIFICATION : CMD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.system.action.MAGAZINE_CARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "command"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v4, "card"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    :try_start_44
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService$1;->this$0:Lcom/android/server/magazinecard/MagazineCardManagerService;

    # getter for: Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/magazinecard/MagazineCardManagerService;->access$000(Lcom/android/server/magazinecard/MagazineCardManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_8

    .line 65
    :catch_50
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "MagazineCardManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during update notificatione : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 51
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
