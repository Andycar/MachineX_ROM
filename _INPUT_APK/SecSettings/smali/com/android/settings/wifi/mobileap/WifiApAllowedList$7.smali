.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 287
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 297
    :goto_0
    return v0

    .line 289
    :pswitch_0
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$402(Z)Z

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
