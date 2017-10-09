.class Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$3;
.super Ljava/lang/Object;
.source "BackgroundTrafficActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;
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
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity$3;->this$0:Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/SecSetupWizard/BackgroundTrafficActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method
