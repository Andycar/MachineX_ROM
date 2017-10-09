.class Lcom/android/server/ConsumerIrService$1;
.super Ljava/util/TimerTask;
.source "ConsumerIrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConsumerIrService;->blinkLED(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConsumerIrService;


# direct methods
.method constructor <init>(Lcom/android/server/ConsumerIrService;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/ConsumerIrService$1;->this$0:Lcom/android/server/ConsumerIrService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/ConsumerIrService$1;->this$0:Lcom/android/server/ConsumerIrService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/ConsumerIrService;->access$000(Lcom/android/server/ConsumerIrService;Z)Z

    .line 147
    return-void
.end method
