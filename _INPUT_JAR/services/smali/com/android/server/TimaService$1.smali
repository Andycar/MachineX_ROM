.class Lcom/android/server/TimaService$1;
.super Ljava/util/TimerTask;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 259
    const-string v0, "TimaService"

    const-string v1, "TIMA: TimaService scheduler is intialized. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    iget-object v0, v0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/TimaService$TimaServiceHandler;->sendEmptyMessage(I)Z

    .line 261
    iget-object v0, p0, Lcom/android/server/TimaService$1;->this$0:Lcom/android/server/TimaService;

    const v1, 0xc350

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/android/server/TimaService;->checkEvent(II)Ljava/lang/String;

    .line 262
    return-void
.end method
