.class Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$3;
.super Ljava/lang/Object;
.source "NetworkChargesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->onRoamingDisplayMobileDataOnAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;)Lcom/sec/android/app/SecSetupWizard/LogMsg;

    move-result-object v0

    const-string v1, "NetworkChargesActivity"

    const-string v2, " onRoamingDisplayMobileDataOnAlert onClick"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method
