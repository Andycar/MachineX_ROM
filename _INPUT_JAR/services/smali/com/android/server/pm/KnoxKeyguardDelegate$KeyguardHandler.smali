.class Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;
.super Landroid/os/Handler;
.source "KnoxKeyguardDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxKeyguardDelegate$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p2, "x1"    # Lcom/android/server/pm/KnoxKeyguardDelegate$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    .line 83
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown msg type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_23
    return-void

    .line 68
    :pswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 69
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->handleHomeShow(I)V
    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$100(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_23

    .line 73
    .end local v0    # "userId":I
    :pswitch_2c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 74
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->show(I)V
    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$200(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_23

    .line 78
    .end local v0    # "userId":I
    :pswitch_34
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 79
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->hide(I)V
    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$300(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_23

    .line 66
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method
