.class Lcom/android/settings/KnoxActiveProtectionSettings$3;
.super Ljava/lang/Object;
.source "KnoxActiveProtectionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxActiveProtectionSettings;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxActiveProtectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxActiveProtectionSettings;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/KnoxActiveProtectionSettings$3;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionSettings$3;->this$0:Lcom/android/settings/KnoxActiveProtectionSettings;

    invoke-static {v0}, Lcom/android/settings/KnoxActiveProtectionSettings;->access$1100(Lcom/android/settings/KnoxActiveProtectionSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 213
    return-void
.end method
