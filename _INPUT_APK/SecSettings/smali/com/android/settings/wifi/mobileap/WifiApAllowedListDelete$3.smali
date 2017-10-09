.class Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    .line 154
    return-void
.end method
