.class Landroid/printservice/PrintService$1;
.super Landroid/printservice/IPrintService$Stub;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/printservice/PrintService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method constructor <init>(Landroid/printservice/PrintService;)V
    .registers 2

    .prologue
    .line 348
    iput-object p1, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-direct {p0}, Landroid/printservice/IPrintService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createPrinterDiscoverySession()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .registers 3

    .prologue
    .line 356
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void
.end method

.method public requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 395
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 397
    return-void
.end method

.method public setClient(Landroid/printservice/IPrintServiceClient;)V
    .registers 4
    .param p1, "client"    # Landroid/printservice/IPrintServiceClient;

    .prologue
    .line 389
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 379
    return-void
.end method

.method public stopPrinterDiscovery()V
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 383
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/printservice/PrintService;->access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method
