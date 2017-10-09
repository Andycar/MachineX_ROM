.class Lcom/android/settings/MobileDataEnabler$SwitchHandler;
.super Landroid/os/Handler;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 338
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->this$0:Lcom/android/settings/MobileDataEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 331
    :pswitch_1
    const-string v0, "MobileDataEnabler"

    const-string v1, " SwitchHandler setChecked , false"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$SwitchHandler;->this$0:Lcom/android/settings/MobileDataEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/MobileDataEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
