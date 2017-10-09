.class public Lcom/android/settings/HighlightingFragment;
.super Landroid/app/Fragment;
.source "HighlightingFragment.java"


# instance fields
.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mViewHighlighted:Z

.field private mViewKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    return-void
.end method

.method private checkTag(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 119
    const/high16 v3, 0x7f100000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, v0

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "viewKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/settings/HighlightingFragment;->checkTag(Landroid/view/View;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    .end local p1    # "root":Landroid/view/View;
    :goto_0
    return-object p1

    .line 104
    .restart local p1    # "root":Landroid/view/View;
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 105
    check-cast v2, Landroid/view/ViewGroup;

    .line 106
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 107
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/android/settings/HighlightingFragment;->findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 110
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    move-object p1, v4

    .line 111
    goto :goto_0

    .line 107
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "n":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0204b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightView(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/HighlightingFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/HighlightingFragment;->findViewForKey(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/HighlightingFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/HighlightingFragment$1;-><init>(Lcom/android/settings/HighlightingFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public highlightViewIfNeeded()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/HighlightingFragment;->highlightView(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 59
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HighlightingFragment;->mViewKey:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/HighlightingFragment;->highlightViewIfNeeded()V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v0, "android:view_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    .line 44
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "android:view_highlighted"

    iget-boolean v1, p0, Lcom/android/settings/HighlightingFragment;->mViewHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method
