.class Lcom/android/settings/wifi/WifiShareProfile$1;
.super Landroid/os/Handler;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    return-void

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$100(Lcom/android/settings/wifi/WifiShareProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$200(Lcom/android/settings/wifi/WifiShareProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$1;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v2, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
