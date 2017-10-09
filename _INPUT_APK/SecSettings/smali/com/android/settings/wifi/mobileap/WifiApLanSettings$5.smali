.class Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 745
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$402(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$102(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 777
    :cond_1
    return-void
.end method
