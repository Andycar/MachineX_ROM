.class Lcom/android/server/DeviceManager3LMService$1;
.super Ljava/lang/Thread;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .registers 2

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 609
    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->SalesCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/DeviceManager3LMService;->access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 610
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService;->restoreDefaultApns()V

    .line 611
    :cond_13
    return-void
.end method
