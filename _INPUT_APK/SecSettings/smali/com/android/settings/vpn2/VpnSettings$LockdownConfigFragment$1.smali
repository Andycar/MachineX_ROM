.class Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$keyStore:Landroid/security/KeyStore;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    iput-object p4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x1

    .line 841
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 842
    .local v1, "newIndex":I
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-static {v4}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->access$100(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    new-array v3, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "true"

    aput-object v5, v3, v4

    .line 847
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v6, "isUserSetAlwaysOnAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 849
    .local v0, "isUserSetAlwaysOnAllowed":I
    if-eqz v0, :cond_0

    .line 855
    if-nez v1, :cond_2

    .line 856
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 857
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/vpn2/VpnSettings;->access$202(Lcom/android/internal/net/VpnProfile;)Lcom/android/internal/net/VpnProfile;

    .line 871
    :goto_1
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    goto :goto_0

    .line 859
    :cond_2
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-static {v4}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->access$300(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 860
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v4

    if-nez v4, :cond_3

    .line 861
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    const v5, 0x7f0a0d85

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 865
    :cond_3
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    iget-object v6, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 867
    invoke-static {v2}, Lcom/android/settings/vpn2/VpnSettings;->access$202(Lcom/android/internal/net/VpnProfile;)Lcom/android/internal/net/VpnProfile;

    goto :goto_1
.end method
