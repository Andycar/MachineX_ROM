.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$2;
.super Ljava/lang/Object;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;Z)Z

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$2;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;Z)Z

    goto :goto_0
.end method
