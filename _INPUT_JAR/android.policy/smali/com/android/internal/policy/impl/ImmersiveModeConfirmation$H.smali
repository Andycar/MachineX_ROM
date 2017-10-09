.class final Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final PANIC:I = 0x3

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .registers 2

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 345
    :goto_5
    return-void

    .line 336
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$900(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    goto :goto_5

    .line 339
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    goto :goto_5

    .line 342
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->this$0:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    # invokes: Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handlePanic()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->access$1000(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V

    goto :goto_5

    .line 334
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
