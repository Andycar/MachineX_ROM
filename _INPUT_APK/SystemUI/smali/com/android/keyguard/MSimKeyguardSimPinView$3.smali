.class Lcom/android/keyguard/MSimKeyguardSimPinView$3;
.super Landroid/os/Handler;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$3;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 413
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$3;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$1200(Lcom/android/keyguard/MSimKeyguardSimPinView;I)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
