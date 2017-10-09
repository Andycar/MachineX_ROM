.class Lcom/sec/android/sviewcover/SViewCoverBase$2;
.super Landroid/os/Handler;
.source "SViewCoverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverBase;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverBase;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 79
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 99
    const-string v1, "SViewCoverBase"

    const-string v2, "undefined message arrived!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v4, v0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->updateCoverState(ZII)V

    .line 84
    const-string v1, "SViewCoverBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state size widthPixel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " heightPixel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/sviewcover/SViewCoverMiniView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/sviewcover/SViewCoverMiniView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    iget v4, v0, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverMiniView;->updateCoverState(ZII)V

    .line 93
    const-string v1, "SViewCoverBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state size widthPixel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " heightPixel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
