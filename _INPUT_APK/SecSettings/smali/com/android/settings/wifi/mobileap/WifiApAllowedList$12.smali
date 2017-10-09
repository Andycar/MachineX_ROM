.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 369
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$402(Z)Z

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->stopActionMode()V

    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$12;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 376
    return-void
.end method
