.class Lcom/android/server/print/RemotePrintService$4;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$4;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$4;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$400(Lcom/android/server/print/RemotePrintService;)V

    .line 256
    return-void
.end method
