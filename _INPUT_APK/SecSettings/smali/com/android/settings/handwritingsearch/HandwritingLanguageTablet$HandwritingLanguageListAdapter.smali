.class public Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HandwritingLanguageTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritingLanguageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "objects"    # [Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 470
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    .line 472
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 477
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    .line 478
    iput-object p3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    .line 479
    iput p2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mResourceId:I

    .line 481
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 482
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 516
    if-nez p2, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 518
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 523
    .local v0, "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1030042

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 524
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$HandwritingLanguageListAdapter;->mLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    return-object v0

    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 520
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "textView":Landroid/widget/TextView;
    goto :goto_0
.end method
