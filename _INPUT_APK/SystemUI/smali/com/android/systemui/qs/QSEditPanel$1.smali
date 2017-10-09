.class Lcom/android/systemui/qs/QSEditPanel$1;
.super Landroid/os/Handler;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->updateViewChangeState(Lcom/android/systemui/qs/QSEditPanel$MessageObject;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
