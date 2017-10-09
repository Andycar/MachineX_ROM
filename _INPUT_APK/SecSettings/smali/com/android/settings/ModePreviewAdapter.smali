.class public Lcom/android/settings/ModePreviewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field ModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsAutomatic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 42
    iput-object v0, p0, Lcom/android/settings/ModePreviewAdapter;->context:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    .line 59
    iput-object p1, p0, Lcom/android/settings/ModePreviewAdapter;->context:Landroid/content/Context;

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    iget-object v0, p0, Lcom/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iput-object p4, p0, Lcom/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    .line 66
    iput-boolean v1, p0, Lcom/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 80
    const-string v1, "ModePreviewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView / position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p2, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/settings/ModePreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04022a

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, "v":Landroid/widget/TextView;
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-boolean v1, p0, Lcom/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    iget-boolean v1, p0, Lcom/android/settings/ModePreviewAdapter;->mIsAutomatic:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    :cond_0
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings/ModePreviewAdapter;->context:Landroid/content/Context;

    const v2, 0x1030042

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ModePreviewAdapter;->ModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object v0

    .end local v0    # "v":Landroid/widget/TextView;
    :cond_2
    move-object v0, p2

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "v":Landroid/widget/TextView;
    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
