.class Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;
.super Landroid/os/Handler;
.source "SeckeyguardClockSingleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->access$000(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->access$100(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView$1;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockSingleImageView;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
