.class Lcom/android/server/hdmi/TimerRecordingAction$1;
.super Ljava/lang/Object;
.source "TimerRecordingAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/TimerRecordingAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/TimerRecordingAction;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    const/4 v1, 0x1

    .line 85
    if-eqz p1, :cond_12

    .line 86
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(I)V

    .line 88
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 93
    :goto_11
    return-void

    .line 91
    :cond_12
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    iput v1, v0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    .line 92
    iget-object v0, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    iget-object v1, p0, Lcom/android/server/hdmi/TimerRecordingAction$1;->this$0:Lcom/android/server/hdmi/TimerRecordingAction;

    iget v1, v1, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    const v2, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/TimerRecordingAction;->addTimer(II)V

    goto :goto_11
.end method
