.class Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$1;
.super Ljava/lang/Object;
.source "BackgroundTrafficActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->setResult(I)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$1;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->finish()V

    .line 71
    return-void
.end method
