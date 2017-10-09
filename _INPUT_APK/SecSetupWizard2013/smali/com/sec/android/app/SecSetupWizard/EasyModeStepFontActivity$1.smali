.class Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;
.super Ljava/lang/Object;
.source "EasyModeStepFontActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->setResult(I)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;->finish()V

    .line 77
    return-void
.end method
