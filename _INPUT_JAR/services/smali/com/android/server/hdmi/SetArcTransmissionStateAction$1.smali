.class Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 4
    .param p1, "error"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_14

    .line 85
    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    # invokes: Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->access$000(Lcom/android/server/hdmi/SetArcTransmissionStateAction;Z)V

    .line 86
    const-string v0, "Failed to send <Report Arc Initiated>."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 89
    :cond_14
    return-void
.end method
