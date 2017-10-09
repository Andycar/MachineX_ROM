.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockSingleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
