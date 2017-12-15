.class Landroid/sec/clipboard/ClipboardExManager$4;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/content/ClipData;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;

.field final synthetic val$clipData:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$setPrimaryData:Z


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;ZLandroid/sec/clipboard/data/ClipboardData;)V
    .registers 4

    .prologue
    .line 690
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$4;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-boolean p2, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$setPrimaryData:Z

    iput-object p3, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 700
    const/4 v0, 0x0

    .line 702
    .local v0, "Result":Z
    :try_start_3
    iget-boolean v5, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$setPrimaryData:Z

    if-eqz v5, :cond_4f

    .line 703
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$4;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4d

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$300()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    iget-object v8, p0, Landroid/sec/clipboard/ClipboardExManager$4;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move v0, v3

    .line 708
    :goto_30
    iget-boolean v3, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$setPrimaryData:Z

    if-eqz v3, :cond_4c

    .line 709
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$4;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 711
    .local v2, "msg":Landroid/os/Message;
    if-eqz v0, :cond_71

    .line 712
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 716
    :goto_43
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$4;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    move v0, v4

    .line 703
    goto :goto_30

    .line 705
    :cond_4f
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v5, :cond_6f

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$4;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_6f

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$300()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager$4;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-interface {v5, v6, v7}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v5

    if-eqz v5, :cond_6f

    move v0, v3

    :goto_6e
    goto :goto_30

    :cond_6f
    move v0, v4

    goto :goto_6e

    .line 714
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_71
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_74} :catch_75

    goto :goto_43

    .line 718
    .end local v2    # "msg":Landroid/os/Message;
    :catch_75
    move-exception v1

    .line 719
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_82

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "setData(ClipboardData)(RemoteException): "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c
.end method
