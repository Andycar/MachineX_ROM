.class Lcom/android/keyguard/sec/KeyguardUnlockView$1;
.super Landroid/os/Handler;
.source "KeyguardUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x12f0
        :pswitch_0
    .end packed-switch
.end method
