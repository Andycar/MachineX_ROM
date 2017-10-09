.class public Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;
.super Landroid/os/AsyncTask;
.source "TermsAndConditionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIThreadForEULA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$102(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Z)Z

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$300(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$400(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/SecSetupWizard/Utils;->getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$202(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$500(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$200(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$102(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;Z)Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity$UIThreadForEULA;->this$0:Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;->access$600(Lcom/sec/android/app/SecSetupWizard/TermsAndConditionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method
