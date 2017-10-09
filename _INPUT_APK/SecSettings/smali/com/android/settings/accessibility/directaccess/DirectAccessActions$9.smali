.class Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;
.super Landroid/os/Handler;
.source "DirectAccessActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 559
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->dismiss()V

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->handleShow()V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
