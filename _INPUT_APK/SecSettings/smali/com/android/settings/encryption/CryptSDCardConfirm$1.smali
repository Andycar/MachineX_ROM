.class Lcom/android/settings/encryption/CryptSDCardConfirm$1;
.super Ljava/lang/Object;
.source "CryptSDCardConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardConfirm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardConfirm;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardConfirm$1;->this$0:Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardConfirm$1;->this$0:Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardConfirm;->access$000(Lcom/android/settings/encryption/CryptSDCardConfirm;)V

    .line 106
    return-void
.end method
