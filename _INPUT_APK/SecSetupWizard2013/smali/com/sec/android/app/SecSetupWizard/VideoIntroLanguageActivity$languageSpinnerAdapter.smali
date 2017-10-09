.class public Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VideoIntroLanguageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "languageSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPosition:I

.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;Landroid/content/Context;II[Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .param p5, "language"    # [Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$LocaleData;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    .line 828
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 820
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->mPosition:I

    .line 829
    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 830
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0d004e

    .line 833
    if-nez p2, :cond_0

    .line 834
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 835
    .local v0, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 838
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$600(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 840
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$700(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 841
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->access$800(Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 847
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 848
    .restart local v1    # "tv":Landroid/widget/TextView;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 851
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 843
    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->this$0:Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 855
    iput p1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->mPosition:I

    .line 857
    if-nez p2, :cond_0

    .line 858
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/VideoIntroLanguageActivity$languageSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 859
    .local v0, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 862
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
