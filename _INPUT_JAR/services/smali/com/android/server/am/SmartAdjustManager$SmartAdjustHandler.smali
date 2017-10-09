.class final Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;
.super Landroid/os/Handler;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartAdjustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmartAdjustHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SmartAdjustManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->this$0:Lcom/android/server/am/SmartAdjustManager;

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 305
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10

    .line 315
    :goto_5
    return-void

    .line 307
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 308
    .local v0, "strPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # invokes: Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/am/SmartAdjustManager;->access$000(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V

    goto :goto_5

    .line 305
    :pswitch_data_10
    .packed-switch 0x321
        :pswitch_6
    .end packed-switch
.end method
