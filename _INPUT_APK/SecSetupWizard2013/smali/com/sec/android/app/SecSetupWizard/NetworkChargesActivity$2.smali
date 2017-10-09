.class Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$2;
.super Ljava/lang/Object;
.source "NetworkChargesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->initView()V
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
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->setResult(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/NetworkChargesActivity;->finish()V

    .line 139
    return-void
.end method
