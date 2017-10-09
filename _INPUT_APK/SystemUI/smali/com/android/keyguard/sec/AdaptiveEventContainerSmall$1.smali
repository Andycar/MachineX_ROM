.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;
.super Landroid/os/Handler;
.source "AdaptiveEventContainerSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    .line 59
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x132e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
