.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$000(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
