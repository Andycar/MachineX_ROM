.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V
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
    .line 450
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 452
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 453
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    if-nez v1, :cond_0

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 454
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v3, v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    if-nez v1, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 455
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v3, v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 458
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_0
    move v3, v5

    .line 453
    goto :goto_0

    :cond_1
    move v2, v5

    .line 454
    goto :goto_1

    :cond_2
    move v2, v5

    .line 455
    goto :goto_2

    .restart local v0    # "i":I
    :cond_3
    move v3, v5

    .line 458
    goto :goto_4

    .line 460
    :cond_4
    return-void
.end method
