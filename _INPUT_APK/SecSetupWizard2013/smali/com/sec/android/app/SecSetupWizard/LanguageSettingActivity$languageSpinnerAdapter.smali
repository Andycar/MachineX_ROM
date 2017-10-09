.class public Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LanguageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "languageSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPosition:I

.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;Landroid/content/Context;II[Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .param p5, "language"    # [Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$LocaleData;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    .line 726
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->mPosition:I

    .line 727
    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 728
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 731
    if-nez p2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 733
    .local v0, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 736
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->access$600(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 737
    const v2, 0x7f0d004e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 738
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->access$700(Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 739
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 741
    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 749
    iput p1, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->mPosition:I

    .line 751
    if-nez p2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/LanguageSettingActivity$languageSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 753
    .local v0, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 756
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x7f0d004e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 761
    .local v1, "tv":Landroid/widget/TextView;
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method
