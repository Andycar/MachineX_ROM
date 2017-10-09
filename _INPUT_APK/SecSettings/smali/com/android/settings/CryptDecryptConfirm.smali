.class public Lcom/android/settings/CryptDecryptConfirm;
.super Landroid/app/Fragment;
.source "CryptDecryptConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptDecryptConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Lcom/android/settings/CryptDecryptConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptConfirm$1;-><init>(Lcom/android/settings/CryptDecryptConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 104
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v0, 0x7f040051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/CryptDecryptConfirm;->establishFinalConfirmationState()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
