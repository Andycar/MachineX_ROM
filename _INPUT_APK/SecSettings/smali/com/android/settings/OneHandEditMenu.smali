.class public Lcom/android/settings/OneHandEditMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandEditMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    }
.end annotation


# instance fields
.field private idxGap:I

.field private mActiveEditMenuNum:I

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailBtnLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableBtnArea:Landroid/widget/LinearLayout;

.field private mBarLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mDividerLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field public mDragStart:Z

.field private final mEditMenuMaxNum:I

.field private final mEditMenuMinNum:I

.field private mLineLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelArea:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/OneHandEditMenuLayout$OnNumOfAvailableButtonsChangeListener;

.field private mOnehandDummry:Landroid/preference/PreferenceScreen;

.field private mOverlayedLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field private mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

.field private mStartFromSearch:Z

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mEditMenuMinNum:I

    .line 85
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mEditMenuMaxNum:I

    .line 86
    iput v2, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    .line 87
    iput v2, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    .line 98
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mLineLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mDividerLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mOverlayedLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mBarLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    iput-boolean v2, p0, Lcom/android/settings/OneHandEditMenu;->mStartFromSearch:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/settings/OneHandEditMenu;->mDragStart:Z

    .line 114
    new-instance v0, Lcom/android/settings/OneHandEditMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$1;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/OneHandEditMenuLayout$OnNumOfAvailableButtonsChangeListener;

    .line 122
    new-instance v0, Lcom/android/settings/OneHandEditMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$2;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 137
    new-instance v0, Lcom/android/settings/OneHandEditMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$3;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 200
    new-instance v0, Lcom/android/settings/OneHandEditMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$4;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    .line 644
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandEditMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/OneHandEditMenu;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/OneHandEditMenu;Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;
    .param p1, "x1"    # Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu;->mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/OneHandEditMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/OneHandEditMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/OneHandEditMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandEditMenu;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/OneHandEditMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 14
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 484
    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 485
    .local v3, "longClickedIdx":I
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 486
    .local v2, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    .line 487
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v3, v8

    .line 488
    const/4 v1, 0x1

    .line 494
    .local v1, "fromArea":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 495
    .local v0, "dropIdx":I
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 496
    .local v7, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    .line 497
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v0, v8

    .line 498
    const/4 v6, 0x1

    .line 503
    .local v6, "toArea":I
    :goto_3
    const-string v8, "OneHandEditMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByBar() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-nez v1, :cond_4

    if-ne v6, v11, :cond_4

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-lt v11, v8, :cond_4

    .line 506
    const v8, 0x7f0a18b1

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/OneHandEditMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 525
    .end local v4    # "message":Ljava/lang/String;
    :goto_4
    return-void

    .line 485
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "toArea":I
    .end local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    .line 490
    .restart local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_1

    .line 495
    .restart local v0    # "dropIdx":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    .line 500
    .restart local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_3

    .line 511
    :cond_4
    if-nez v6, :cond_5

    if-ne v1, v11, :cond_5

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-gt v13, v8, :cond_5

    .line 512
    const v8, 0x7f0a18b2

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/OneHandEditMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 513
    .restart local v4    # "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 517
    .end local v4    # "message":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 518
    .local v5, "removedItem":Ljava/lang/String;
    if-ge v3, v0, :cond_6

    if-ne v2, v7, :cond_6

    .line 519
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 524
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->saveAppslist()V

    goto :goto_4

    .line 521
    :cond_6
    invoke-virtual {v7, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 14
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 530
    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 531
    .local v3, "longClickedIdx":I
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 532
    .local v2, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    .line 533
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v3, v8

    .line 534
    const/4 v1, 0x1

    .line 540
    .local v1, "fromArea":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 541
    .local v0, "dropIdx":I
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 542
    .local v7, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    .line 543
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v0, v8

    .line 544
    const/4 v6, 0x1

    .line 549
    .local v6, "toArea":I
    :goto_3
    const-string v8, "OneHandEditMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByPanel() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0, v7, v0}, Lcom/android/settings/OneHandEditMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 552
    if-nez v1, :cond_4

    if-ne v6, v11, :cond_4

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-lt v11, v8, :cond_4

    .line 553
    const v8, 0x7f0a18b1

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/OneHandEditMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 568
    .end local v4    # "message":Ljava/lang/String;
    :goto_4
    return-void

    .line 531
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "toArea":I
    .end local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    .line 536
    .restart local v2    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_1

    .line 541
    .restart local v0    # "dropIdx":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    .line 546
    .restart local v7    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_3

    .line 556
    :cond_4
    if-nez v6, :cond_5

    if-ne v1, v11, :cond_5

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-gt v13, v8, :cond_5

    .line 557
    const v8, 0x7f0a18b2

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/OneHandEditMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 558
    .restart local v4    # "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 561
    .end local v4    # "message":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 562
    .local v5, "removedItem":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v5    # "removedItem":Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->saveAppslist()V

    goto :goto_4

    .line 565
    :cond_6
    invoke-direct {p0, v2, v3, v7, v0}, Lcom/android/settings/OneHandEditMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_5
.end method

.method private displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .param p1, "mode"    # I
    .param p2, "oneLinePanelNum"    # I
    .param p3, "totalPanelLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p4, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p5, "panelViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v23, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/OneHandEditMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 353
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 355
    .local v13, "packageName":Ljava/lang/String;
    mul-int v22, p2, p3

    .line 356
    .local v22, "totalPanelNum":I
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 358
    .local v6, "gap":I
    :goto_0
    const/4 v7, 0x0

    .line 359
    .local v7, "idx":I
    const/16 v20, 0x0

    .line 360
    .local v20, "panelViewLayoutId":I
    const/16 v21, 0x0

    .line 361
    .local v21, "panelViewLayoutOverlayedId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 362
    const v20, 0x7f04014a

    .line 363
    const v21, 0x7f040149

    .line 368
    :goto_1
    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v7, v0, :cond_3

    .line 369
    const/16 v23, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 370
    .local v19, "panelView":Landroid/view/View;
    const v23, 0x7f100269

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 371
    .local v14, "panel":Landroid/widget/LinearLayout;
    const v23, 0x7f1002c7

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 372
    .local v16, "panelImageView":Landroid/widget/ImageView;
    const v23, 0x7f1002c8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 374
    .local v18, "panelTextView":Landroid/widget/TextView;
    const/16 v23, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 375
    .local v12, "overlayedPanelView":Landroid/view/View;
    const v23, 0x7f1002cb

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 376
    .local v15, "panelBar":Landroid/widget/ImageView;
    const v23, 0x7f1002cc

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 379
    .local v5, "fakePanel":Landroid/view/View;
    add-int v23, v7, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 380
    add-int v23, v7, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 381
    add-int v23, v7, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 382
    const-string v23, "OneHandEditMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "idx: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v23, "OneHandEditMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "gap: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v23, "OneHandEditMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tag: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int v25, v7, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v7}, Lcom/android/settings/OneHandEditMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 387
    const v23, 0x7f020595

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 388
    const v23, 0x7f1002c6

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OneHandEditMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 409
    div-int v4, v7, p2

    .line 410
    .local v4, "containerIdx":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 411
    .local v3, "container":Landroid/widget/FrameLayout;
    const v23, 0x7f1002ce

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 412
    .local v11, "notificationPanelLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    const v23, 0x7f1002cf

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 415
    .local v10, "notificationPanelBarLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 356
    .end local v3    # "container":Landroid/widget/FrameLayout;
    .end local v4    # "containerIdx":I
    .end local v5    # "fakePanel":Landroid/view/View;
    .end local v6    # "gap":I
    .end local v7    # "idx":I
    .end local v10    # "notificationPanelBarLayout":Landroid/widget/LinearLayout;
    .end local v11    # "notificationPanelLayout":Landroid/widget/LinearLayout;
    .end local v12    # "overlayedPanelView":Landroid/view/View;
    .end local v14    # "panel":Landroid/widget/LinearLayout;
    .end local v15    # "panelBar":Landroid/widget/ImageView;
    .end local v16    # "panelImageView":Landroid/widget/ImageView;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/view/View;
    .end local v20    # "panelViewLayoutId":I
    .end local v21    # "panelViewLayoutOverlayedId":I
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    goto/16 :goto_0

    .line 365
    .restart local v6    # "gap":I
    .restart local v7    # "idx":I
    .restart local v20    # "panelViewLayoutId":I
    .restart local v21    # "panelViewLayoutOverlayedId":I
    :cond_1
    const v20, 0x7f040147

    .line 366
    const v21, 0x7f040148

    goto/16 :goto_1

    .line 390
    .restart local v5    # "fakePanel":Landroid/view/View;
    .restart local v12    # "overlayedPanelView":Landroid/view/View;
    .restart local v14    # "panel":Landroid/widget/LinearLayout;
    .restart local v15    # "panelBar":Landroid/widget/ImageView;
    .restart local v16    # "panelImageView":Landroid/widget/ImageView;
    .restart local v18    # "panelTextView":Landroid/widget/TextView;
    .restart local v19    # "panelView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 394
    .local v17, "panelText":Ljava/lang/String;
    move-object/from16 v8, v17

    .line 395
    .local v8, "imgResourceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OneHandEditMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "drawable"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/OneHandEditMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "string"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OneHandEditMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OneHandEditMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_3

    .line 418
    .end local v5    # "fakePanel":Landroid/view/View;
    .end local v8    # "imgResourceName":Ljava/lang/String;
    .end local v12    # "overlayedPanelView":Landroid/view/View;
    .end local v14    # "panel":Landroid/widget/LinearLayout;
    .end local v15    # "panelBar":Landroid/widget/ImageView;
    .end local v16    # "panelImageView":Landroid/widget/ImageView;
    .end local v17    # "panelText":Ljava/lang/String;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 572
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 573
    const/4 v0, 0x1

    .line 575
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 7

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "active_app_list":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_number_of_apps"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    .line 442
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - active_app_list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveEditMenuNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    if-nez v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 450
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 453
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "activeApps":[Ljava/lang/String;
    array-length v4, v0

    iget v5, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-ge v4, v5, :cond_1

    .line 457
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - activeApps.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    array-length v4, v0

    iput v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    .line 461
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-ge v3, v4, :cond_3

    .line 462
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    .local v2, "convertPanelString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 464
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 468
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_3
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v3, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 471
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 472
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertPanelString:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz v2, :cond_4

    .line 474
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 478
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_5
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mCandidateNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Recent"

    const-string v2, "onehand_edit_recent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Home"

    const-string v2, "onehand_edit_home"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Back"

    const-string v2, "onehand_edit_back"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Reduce"

    const-string v2, "onehand_edit_reduce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apps"

    const-string v2, "onehand_edit_apps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Options"

    const-string v2, "onehand_edit_options"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_recent"

    const-string v2, "Recent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_home"

    const-string v2, "Home"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_back"

    const-string v2, "Back"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_reduce"

    const-string v2, "Reduce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_apps"

    const-string v2, "Apps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_options"

    const-string v2, "Options"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-void
.end method

.method private refreshUI()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 611
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v2

    .line 613
    .local v2, "isRemoved":Z
    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshUI() - isRemoved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v2    # "isRemoved":Z
    :cond_0
    new-instance v0, Lcom/android/settings/OneHandEditMenuLayout;

    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/settings/OneHandEditMenuLayout;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "autoPanelLayout":Lcom/android/settings/OneHandEditMenuLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 619
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3}, Lcom/android/settings/OneHandEditMenuLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/OneHandEditMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 623
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040145

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 624
    .local v4, "quickSettingsView":Landroid/view/View;
    const v7, 0x7f1002c1

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    .line 625
    const v7, 0x7f1002c3

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    .line 626
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->updateQuickSettingsList()V

    .line 629
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v5, v7, v8

    .line 630
    .local v5, "totalQuickBtnNum":I
    const/4 v7, 0x1

    if-lt v7, v5, :cond_1

    .line 631
    const v7, 0x7f1002c2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/PanelTextView;

    .line 632
    .local v6, "tv":Lcom/android/settings/PanelTextView;
    invoke-virtual {v6, v11}, Lcom/android/settings/PanelTextView;->setVisibility(I)V

    .line 633
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    .end local v6    # "tv":Lcom/android/settings/PanelTextView;
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/settings/OneHandEditMenuLayout;->addView(Landroid/view/View;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v10, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    .line 642
    return-void
.end method

.method private saveAppslist()V
    .locals 7

    .prologue
    .line 585
    const-string v0, ""

    .line 589
    .local v0, "activeApps":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, "convertPanelString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_0
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 598
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    .restart local v1    # "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 601
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_1
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_number_of_apps"

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_app_list"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_number_of_apps"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    .line 607
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .param p2, "longClickedIdx"    # I
    .param p4, "dropIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "longClickedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "dropList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 580
    .local v0, "temp":Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 15

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 297
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 310
    .local v2, "oneLinePanelNum":I
    :goto_0
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v3, v0, v2

    .line 315
    .local v3, "notiPanelLines":I
    :goto_1
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - notiPanelLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    mul-int v0, v2, v3

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    .line 320
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandEditMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 321
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v3, :cond_4

    .line 322
    const v0, 0x7f04014b

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 324
    .local v11, "container":Landroid/widget/FrameLayout;
    const v0, 0x7f1002cd

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 308
    .end local v2    # "oneLinePanelNum":I
    .end local v3    # "notiPanelLines":I
    .end local v11    # "container":Landroid/widget/FrameLayout;
    .end local v12    # "i":I
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .restart local v2    # "oneLinePanelNum":I
    goto/16 :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 324
    .restart local v3    # "notiPanelLines":I
    .restart local v11    # "container":Landroid/widget/FrameLayout;
    .restart local v12    # "i":I
    .restart local v13    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    if-nez v12, :cond_3

    const/16 v0, 0x8

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 330
    .end local v11    # "container":Landroid/widget/FrameLayout;
    :cond_4
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/OneHandEditMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v7, v0, v2

    .line 335
    .local v7, "availBtnlLines":I
    :goto_4
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - availBtnlLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-nez v7, :cond_5

    .line 338
    const/4 v7, 0x1

    .line 340
    :cond_5
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    if-ge v14, v7, :cond_7

    .line 341
    const v0, 0x7f04014b

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 342
    .restart local v11    # "container":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 333
    .end local v7    # "availBtnlLines":I
    .end local v11    # "container":Landroid/widget/FrameLayout;
    .end local v14    # "j":I
    :cond_6
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    goto :goto_4

    .line 345
    .restart local v7    # "availBtnlLines":I
    .restart local v14    # "j":I
    :cond_7
    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/OneHandEditMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 347
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    .line 266
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->refreshUI()V

    .line 269
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 289
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    .line 290
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->refreshUI()V

    .line 292
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 239
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandEditMenu;->addPreferencesFromResource(I)V

    .line 240
    const-string v0, "onehand_edit_dummy"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandEditMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mOnehandDummry:Landroid/preference/PreferenceScreen;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mOnehandDummry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/OneHandEditMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_edit_active_number_of_apps"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    .line 244
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->makeConvertPanelName()V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->loadAppslist()V

    .line 246
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 253
    const-string v0, "OneHandEditMenu"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mLineLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mOverlayedLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mBarLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    .line 280
    :cond_0
    return-void
.end method
