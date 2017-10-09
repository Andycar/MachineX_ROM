.class Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$6;
.super Ljava/lang/Object;
.source "DeviceNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity$6;->this$0:Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/DeviceNameActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 310
    return-void
.end method
