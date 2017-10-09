.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 309
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 314
    if-eqz p2, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V

    goto :goto_0
.end method
