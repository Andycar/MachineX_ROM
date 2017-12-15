.class Lcom/android/server/FMRadioService$6;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EVENT_AUDIOFOCUS_GAIN:I = 0x1

.field public static final EVENT_AUDIOFOCUS_LOSS:I = -0x1

.field public static final EVENT_AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final EVENT_AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final INIT_TIRED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "mAudioFocusHandler:"


# instance fields
.field private TIREDTIME:I

.field private isTired:Z

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 3

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 410
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0xa

    const-wide/16 v4, 0x3e8

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioFocusHandler:mHandler(g.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called + isTired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 421
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ba

    .line 445
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============TIREDTIME = ==== ||| "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ||||| ===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 447
    return-void

    .line 426
    :sswitch_55
    iget-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    if-eqz v0, :cond_7d

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioFocusHandler:TIME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 428
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/FMRadioService$6;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2d

    .line 430
    :cond_7d
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/FMRadioService;->responedFocusEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/FMRadioService;->access$1900(Lcom/android/server/FMRadioService;I)V

    .line 431
    iget-object v0, p0, Lcom/android/server/FMRadioService$6;->this$0:Lcom/android/server/FMRadioService;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/FMRadioService;->respondAudioFocusChangeForDns(I)V
    invoke-static {v0, v1}, Lcom/android/server/FMRadioService;->access$2000(Lcom/android/server/FMRadioService;I)V

    .line 432
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService$6;->removeMessages(I)V

    .line 433
    iget v0, p0, Lcom/android/server/FMRadioService$6;->TIREDTIME:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/FMRadioService$6;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioFocusHandler:Fired  TIME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 439
    :sswitch_b4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService$6;->isTired:Z

    goto/16 :goto_2d

    .line 421
    nop

    :sswitch_data_ba
    .sparse-switch
        -0x3 -> :sswitch_55
        -0x2 -> :sswitch_55
        -0x1 -> :sswitch_55
        0x1 -> :sswitch_55
        0xa -> :sswitch_b4
    .end sparse-switch
.end method
