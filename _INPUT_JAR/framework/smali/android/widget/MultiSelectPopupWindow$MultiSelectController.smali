.class Landroid/widget/MultiSelectPopupWindow$MultiSelectController;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectController"
.end annotation


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

.field private mPreThemeIsDeviceDefault:Z

.field private mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

.field private mThemeIsDeviceDefault:Z

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .registers 3

    .prologue
    .line 952
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    .line 955
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mPreThemeIsDeviceDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p2, "x1"    # Landroid/widget/MultiSelectPopupWindow$1;

    .prologue
    .line 952
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private initDrawables()V
    .registers 4

    .prologue
    .line 976
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mPreThemeIsDeviceDefault:Z

    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    if-eq v0, v1, :cond_29

    .line 977
    :cond_e
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$902(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 979
    :cond_29
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mPreThemeIsDeviceDefault:Z

    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    if-eq v0, v1, :cond_52

    .line 980
    :cond_37
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$1002(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 982
    :cond_52
    return-void
.end method

.method private initHandles()V
    .registers 5

    .prologue
    .line 985
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mPreThemeIsDeviceDefault:Z

    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    if-eq v0, v1, :cond_1f

    .line 986
    :cond_a
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    .line 988
    :cond_1f
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mPreThemeIsDeviceDefault:Z

    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    if-eq v0, v1, :cond_3e

    .line 989
    :cond_29
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    .line 992
    :cond_3e
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 993
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    .line 995
    :cond_4f
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->show()V

    .line 996
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->show()V

    .line 998
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_9

    .line 1002
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hide()V

    .line 1004
    :cond_9
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_12

    .line 1005
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->hide()V

    .line 1007
    :cond_12
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1008
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    .line 1010
    :cond_23
    return-void
.end method

.method public initPreviousOffset()V
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_9

    .line 1047
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->initPreviousOffset()V

    .line 1049
    :cond_9
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_12

    .line 1050
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->initPreviousOffset()V

    .line 1052
    :cond_12
    return-void
.end method

.method public isSelectionEndDragged()Z
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSelectionStartDragged()Z
    .registers 2

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isThemeDeviceDefault()Z
    .registers 2

    .prologue
    .line 961
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    return v0
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 1036
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1037
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1039
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v1, :cond_14

    .line 1040
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->onDetached()V

    .line 1041
    :cond_14
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v1, :cond_1d

    .line 1042
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->onDetached()V

    .line 1043
    :cond_1d
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 1029
    if-nez p1, :cond_5

    .line 1030
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    .line 1032
    :cond_5
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .registers 6

    .prologue
    .line 1058
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isSelectionStartDragged()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isSelectionEndDragged()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v3, :cond_43

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v3, :cond_43

    .line 1059
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1060
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_25

    .line 1061
    const-string v3, "MultiSelectPopupWindow"

    const-string v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object v3, v2

    .line 1064
    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1065
    .local v1, "selStart":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1067
    .local v0, "selEnd":I
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1068
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    .line 1079
    .end local v0    # "selEnd":I
    .end local v1    # "selStart":I
    :cond_43
    :goto_43
    return-void

    .line 1069
    .restart local v0    # "selEnd":I
    .restart local v1    # "selStart":I
    :cond_44
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1070
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_43

    .line 1071
    :cond_56
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1072
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_43

    .line 1073
    :cond_70
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_86

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_86

    .line 1074
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hideMultiSelectQuickPopupWindow()V

    goto :goto_43

    .line 1075
    :cond_86
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_43

    .line 1076
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->hideMultiSelectQuickPopupWindow()V

    goto :goto_43
.end method

.method public show()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 965
    iget-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mPreThemeIsDeviceDefault:Z

    .line 966
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 967
    .local v0, "outValue":Landroid/util/TypedValue;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10105a2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 968
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_22

    .line 969
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mThemeIsDeviceDefault:Z

    .line 971
    :cond_22
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initDrawables()V

    .line 972
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initHandles()V

    .line 973
    return-void
.end method
