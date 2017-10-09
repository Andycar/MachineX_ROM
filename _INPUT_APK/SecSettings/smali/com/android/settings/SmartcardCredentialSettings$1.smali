.class Lcom/android/settings/SmartcardCredentialSettings$1;
.super Ljava/lang/Object;
.source "SmartcardCredentialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartcardCredentialSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartcardCredentialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartcardCredentialSettings;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/SmartcardCredentialSettings$1;->this$0:Lcom/android/settings/SmartcardCredentialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/SmartcardCredentialSettings$1;->this$0:Lcom/android/settings/SmartcardCredentialSettings;

    invoke-virtual {v0}, Lcom/android/settings/SmartcardCredentialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    return-void
.end method
