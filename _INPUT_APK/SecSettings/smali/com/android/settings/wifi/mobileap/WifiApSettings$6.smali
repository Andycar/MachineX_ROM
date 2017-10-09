.class Lcom/android/settings/wifi/mobileap/WifiApSettings$6;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 993
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, p3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$902(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I

    .line 995
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 996
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 997
    return-void
.end method
