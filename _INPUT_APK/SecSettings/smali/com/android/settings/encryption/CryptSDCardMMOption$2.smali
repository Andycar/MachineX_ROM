.class Lcom/android/settings/encryption/CryptSDCardMMOption$2;
.super Ljava/lang/Object;
.source "CryptSDCardMMOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardMMOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardMMOption;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardMMOption$2;->this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption$2;->this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->access$000(Lcom/android/settings/encryption/CryptSDCardMMOption;)Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    .line 92
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardMMOption$2;->this$0:Lcom/android/settings/encryption/CryptSDCardMMOption;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardMMOption;->access$100(Lcom/android/settings/encryption/CryptSDCardMMOption;)V

    .line 93
    return-void
.end method
