.class public Lcom/sec/android/app/SecSetupWizard/BasicForm;
.super Landroid/widget/LinearLayout;
.source "BasicForm.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mScreen:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->init_layout()V

    .line 33
    return-void
.end method

.method private init_layout()V
    .locals 4

    .prologue
    .line 43
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mView:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mView:Landroid/view/View;

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mScreen:Landroid/widget/LinearLayout;

    .line 47
    const v1, 0x7f0d0017

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "nextBtnText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method


# virtual methods
.method public changeScreen(I)V
    .locals 3
    .param p1, "layoutRes"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->inflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "item":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public changeScreen(II)V
    .locals 5
    .param p1, "layoutRes"    # I
    .param p2, "titleRes"    # I

    .prologue
    .line 59
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->inflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "item":Landroid/view/View;
    const v3, 0x7f0d0013

    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "tv":Landroid/widget/TextView;
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isVideoSequenceModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mScreen:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    return-void

    .line 65
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/BasicForm;->mView:Landroid/view/View;

    return-object v0
.end method
