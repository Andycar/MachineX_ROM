.class Landroid/sec/clipboard/ClipboardExManager$3;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setDataWithoutNoti(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
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
    .line 617
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$3;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$3;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 627
    :try_start_0
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ClipboardServiceEx"

    const-string v2, "getService().SetClipboardData start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_b
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$3;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$3;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_33

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$300()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager$3;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$3;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$3;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_34

    move-result v1

    if-eqz v1, :cond_33

    .line 635
    :cond_33
    :goto_33
    return-void

    .line 631
    :catch_34
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_41

    const-string v1, "ClipboardServiceEx"

    const-string/jumbo v2, "setData(ClipboardData)(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method
