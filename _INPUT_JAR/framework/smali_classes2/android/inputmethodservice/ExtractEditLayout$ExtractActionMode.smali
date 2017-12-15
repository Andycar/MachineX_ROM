.class Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
.super Landroid/view/ActionMode;
.source "ExtractEditLayout.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/ExtractEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractActionMode"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/inputmethodservice/ExtractEditLayout;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V
    .registers 5
    .param p2, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 129
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 130
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 131
    iput-object p2, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 132
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 178
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result v0

    .line 180
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eq v1, p0, :cond_9

    .line 220
    :cond_8
    :goto_8
    return-void

    .line 191
    :cond_9
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 192
    iput-object v3, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 194
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v1, :cond_1d

    .line 195
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 198
    :cond_1d
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/ExtractEditLayout;->sendAccessibilityEvent(I)V

    .line 205
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 207
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 212
    .end local v0    # "i":I
    :cond_5c
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iput-object v3, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    .line 216
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 217
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 218
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iput-object v3, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    goto :goto_8
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 244
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 169
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 171
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 173
    return-void

    .line 171
    :catchall_12
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 253
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_28

    .line 257
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 258
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x1020021

    if-ne v1, v2, :cond_26

    .line 259
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    # getter for: Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Landroid/inputmethodservice/ExtractEditLayout;->access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->setExtractSelectionToEnd()V

    .line 260
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    # getter for: Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v1}, Landroid/inputmethodservice/ExtractEditLayout;->access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->hideExtractCursorController()V

    :cond_26
    move v1, v0

    .line 266
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 271
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    return-void
.end method

.method public setSubtitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 152
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    return-void
.end method

.method public setTitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 142
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    return-void
.end method
