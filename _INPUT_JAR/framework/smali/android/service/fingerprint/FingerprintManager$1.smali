.class Landroid/service/fingerprint/FingerprintManager$1;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/service/fingerprint/FingerprintManager;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    .line 97
    :cond_d
    :goto_d
    return-void

    .line 82
    :pswitch_e
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onEnrollResult(II)V

    goto :goto_d

    .line 85
    :pswitch_1c
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onAcquired(I)V

    goto :goto_d

    .line 88
    :pswitch_28
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onProcessed(I)V

    goto :goto_d

    .line 91
    :pswitch_34
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onError(I)V

    goto :goto_d

    .line 94
    :pswitch_40
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$1;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onRemoved(I)V

    goto :goto_d

    .line 80
    :pswitch_data_4c
    .packed-switch 0x64
        :pswitch_e
        :pswitch_1c
        :pswitch_28
        :pswitch_34
        :pswitch_40
    .end packed-switch
.end method
