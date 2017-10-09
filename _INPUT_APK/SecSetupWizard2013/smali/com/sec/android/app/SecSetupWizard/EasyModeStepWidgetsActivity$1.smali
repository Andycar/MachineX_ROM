.class Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity$1;
.super Ljava/lang/Object;
.source "EasyModeStepWidgetsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;->setResult(I)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepWidgetsActivity;->finish()V

    .line 42
    return-void
.end method
