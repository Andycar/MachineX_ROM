.class final Lcom/android/server/am/LockTaskNotify$H;
.super Landroid/os/Handler;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LockTaskNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final SHOW_TOAST:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LockTaskNotify;


# direct methods
.method private constructor <init>(Lcom/android/server/am/LockTaskNotify;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify$H;->this$0:Lcom/android/server/am/LockTaskNotify;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/LockTaskNotify;
    .param p2, "x1"    # Lcom/android/server/am/LockTaskNotify$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 120
    :goto_5
    return-void

    .line 117
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify$H;->this$0:Lcom/android/server/am/LockTaskNotify;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Lcom/android/server/am/LockTaskNotify;->handleShowToast(Z)V

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 115
    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
