.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 254
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 256
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 257
    .local v2, "screenWidth":I
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0526

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 258
    .local v0, "hintToast":Landroid/widget/Toast;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 259
    .local v1, "screenPos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 260
    const/16 v3, 0x35

    aget v4, v1, v5

    sub-int v4, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 262
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    const/4 v3, 0x1

    return v3
.end method
