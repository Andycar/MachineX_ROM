.class Landroid/service/dreams/DreamService$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 2

    .prologue
    .line 998
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$100(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mWindowless:Z
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$200(Landroid/service/dreams/DreamService;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1002
    :cond_10
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->mDebug:Z
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$300(Landroid/service/dreams/DreamService;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    # getter for: Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/service/dreams/DreamService;->access$400(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_23
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    # setter for: Landroid/service/dreams/DreamService;->mStarted:Z
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$502(Landroid/service/dreams/DreamService;Z)Z

    .line 1004
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 1006
    :cond_2e
    return-void
.end method
