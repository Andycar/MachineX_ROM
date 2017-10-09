.class Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$1;
.super Ljava/lang/Object;
.source "EmailAccountConfigureList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->setResult(I)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList$1;->this$0:Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/EmailAccountConfigureList;->finish()V

    .line 62
    return-void
.end method
