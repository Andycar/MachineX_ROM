.class Lcom/android/settings/DeviceNameDialog$3;
.super Ljava/lang/Object;
.source "DeviceNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceNameDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceNameDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceNameDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/DeviceNameDialog$3;->this$0:Lcom/android/settings/DeviceNameDialog;

    iput-object p2, p0, Lcom/android/settings/DeviceNameDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog$3;->this$0:Lcom/android/settings/DeviceNameDialog;

    invoke-virtual {v0}, Lcom/android/settings/DeviceNameDialog;->finish()V

    .line 86
    return-void
.end method
