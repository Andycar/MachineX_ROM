.class Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/LocationActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/LocationActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/LocationActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/LocationActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->access$000(Lcom/sec/android/app/SecSetupWizard/LocationActivity;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/LocationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->setResult(I)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/LocationActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/LocationActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/LocationActivity;->finish()V

    .line 72
    return-void
.end method
