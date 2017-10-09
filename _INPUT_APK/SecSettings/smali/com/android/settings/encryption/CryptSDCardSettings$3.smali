.class Lcom/android/settings/encryption/CryptSDCardSettings$3;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1100(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const v3, 0x7f0a106a

    invoke-virtual {v2, v3}, Lcom/android/settings/encryption/CryptSDCardSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "passworQualtiy":Landroid/os/Bundle;
    const-string v1, "ode_password_quality"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Fragment;

    move-result-object v2

    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v4, 0x7b

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 185
    .end local v0    # "passworQualtiy":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1202(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z

    .line 183
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1000(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0
.end method
