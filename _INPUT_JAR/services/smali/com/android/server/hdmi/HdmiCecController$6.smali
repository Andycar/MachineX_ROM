.class Lcom/android/server/hdmi/HdmiCecController$6;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field final synthetic val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[S]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiCecController;->access$500(I[B)[B

    move-result-object v0

    .line 556
    .local v0, "body":[B
    const/4 v3, 0x0

    .line 557
    .local v3, "i":I
    const/4 v1, 0x0

    .line 559
    .local v1, "errorCode":I
    :goto_2d
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    # getter for: Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiCecController;->access$600(Lcom/android/server/hdmi/HdmiCecController;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    iget-object v8, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v8

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I
    invoke-static {v6, v7, v5, v8, v0}, Lcom/android/server/hdmi/HdmiCecController;->access$700(JII[B)I

    move-result v1

    .line 561
    if-nez v1, :cond_71

    .line 566
    :goto_45
    move v2, v1

    .line 567
    .local v2, "finalError":I
    if-eqz v2, :cond_62

    .line 568
    const-string v5, "HdmiCecController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_62
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v5, :cond_70

    .line 571
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v6, Lcom/android/server/hdmi/HdmiCecController$6$1;

    invoke-direct {v6, p0, v2}, Lcom/android/server/hdmi/HdmiCecController$6$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$6;I)V

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiCecController;->access$400(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    .line 578
    :cond_70
    return-void

    .line 564
    .end local v2    # "finalError":I
    :cond_71
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/4 v5, 0x1

    if-lt v3, v5, :cond_78

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_45

    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_78
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2d
.end method
