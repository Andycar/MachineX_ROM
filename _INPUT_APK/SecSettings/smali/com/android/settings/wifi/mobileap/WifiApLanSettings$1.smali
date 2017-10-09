.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 247
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    .line 251
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
