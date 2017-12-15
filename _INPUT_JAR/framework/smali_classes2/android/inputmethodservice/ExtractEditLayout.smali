.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "ExtractEditLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    }
.end annotation


# instance fields
.field mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

.field mEditButton:Landroid/widget/Button;

.field mExtractActionButton:Landroid/widget/Button;

.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;
    .registers 2
    .param p0, "x0"    # Landroid/inputmethodservice/ExtractEditLayout;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method


# virtual methods
.method dismissActionMenu()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 92
    :cond_9
    return-void
.end method

.method public finishActionMode()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->finish()V

    .line 83
    :cond_9
    return-void
.end method

.method public isActionModeStarted()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 97
    const v0, 0x1020395

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    .line 98
    const v0, 0x1020396

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    new-instance v1, Landroid/inputmethodservice/ExtractEditLayout$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/ExtractEditLayout$1;-><init>(Landroid/inputmethodservice/ExtractEditLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 282
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    if-ne p2, v0, :cond_10

    .line 283
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 285
    :cond_10
    return-void
.end method

.method public setIME(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p1, "ime"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 295
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 296
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "sourceView"    # Landroid/view/View;
    .param p2, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 56
    new-instance v0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-direct {v0, p0, p2}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;-><init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V

    .line 57
    .local v0, "mode":Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 58
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->invalidate()V

    .line 59
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 62
    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    .line 63
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/ExtractEditLayout;->sendAccessibilityEvent(I)V

    .line 66
    .end local v0    # "mode":Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :goto_26
    return-object v0

    .restart local v0    # "mode":Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method
