.class Landroid/sec/clipboard/ClipboardExManager$5;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;

.field final synthetic val$clipData:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3

    .prologue
    .line 765
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$5;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$5;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 776
    :try_start_2
    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$5;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v4, :cond_43

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$5;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_43

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$300()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$5;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager$5;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager$5;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 778
    .local v0, "Result":Z
    :goto_2a
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$5;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 780
    .local v2, "msg":Landroid/os/Message;
    if-eqz v0, :cond_45

    .line 781
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 785
    :goto_39
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$5;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    .end local v0    # "Result":Z
    .end local v2    # "msg":Landroid/os/Message;
    :goto_42
    return-void

    :cond_43
    move v0, v3

    .line 776
    goto :goto_2a

    .line 783
    .restart local v0    # "Result":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_45
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_49

    goto :goto_39

    .line 787
    .end local v0    # "Result":Z
    .end local v2    # "msg":Landroid/os/Message;
    :catch_49
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_56

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "setData(ClipboardData)(RemoteException): "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method
