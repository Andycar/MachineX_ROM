.class Landroid/sec/clipboard/ClipboardExManager$2;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
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
    .line 532
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/16 v8, 0x9

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 542
    :try_start_4
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "ClipboardServiceEx"

    const-string v5, "getService().SetClipboardData start"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_f
    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5e

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$300()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    iget-object v7, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 546
    .local v0, "Result":Z
    :goto_37
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 548
    .local v2, "msg":Landroid/os/Message;
    if-eqz v0, :cond_75

    .line 549
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v8, :cond_60

    .line 551
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x0

    # setter for: Landroid/sec/clipboard/ClipboardExManager;->mScrapDataSaving:Z
    invoke-static {v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->access$502(Landroid/sec/clipboard/ClipboardExManager;Z)Z

    .line 552
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 564
    :goto_54
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    .end local v0    # "Result":Z
    .end local v2    # "msg":Landroid/os/Message;
    :goto_5d
    return-void

    :cond_5e
    move v0, v3

    .line 544
    goto :goto_37

    .line 554
    .restart local v0    # "Result":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_60
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_63} :catch_64

    goto :goto_54

    .line 566
    .end local v0    # "Result":Z
    .end local v2    # "msg":Landroid/os/Message;
    :catch_64
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_71

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "setData(ClipboardData)(RemoteException): "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_71
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "Result":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_75
    :try_start_75
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v3, :cond_86

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v3, v8, :cond_86

    .line 559
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->showUIFloatingIcon()V

    .line 561
    :cond_86
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_89} :catch_64

    goto :goto_54
.end method
