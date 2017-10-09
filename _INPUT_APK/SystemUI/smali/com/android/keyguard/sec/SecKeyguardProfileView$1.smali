.class Lcom/android/keyguard/sec/SecKeyguardProfileView$1;
.super Landroid/os/Handler;
.source "SecKeyguardProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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

    .line 85
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$000(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$100(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$200(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
