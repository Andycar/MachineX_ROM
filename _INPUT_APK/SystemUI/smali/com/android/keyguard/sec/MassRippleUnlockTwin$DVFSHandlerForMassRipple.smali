.class Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;
.super Landroid/os/Handler;
.source "MassRippleUnlockTwin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/MassRippleUnlockTwin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForMassRipple"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 838
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 848
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 849
    return-void

    .line 841
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    invoke-static {v0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$400(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V

    goto :goto_0

    .line 845
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$DVFSHandlerForMassRipple;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    invoke-static {v0}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$500(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)V

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
