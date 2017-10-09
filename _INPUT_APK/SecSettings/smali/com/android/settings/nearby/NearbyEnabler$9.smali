.class Lcom/android/settings/nearby/NearbyEnabler$9;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/NearbyEnabler;->requestWifiCheckingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 993
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 994
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1006
    :goto_0
    return v0

    .line 997
    :sswitch_0
    invoke-static {v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$1502(Z)Z

    .line 998
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2, v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$1800(Lcom/android/settings/nearby/NearbyEnabler;Z)V

    .line 999
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1000
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 994
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method
