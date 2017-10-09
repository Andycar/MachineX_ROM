.class public Lcom/android/settings/PenDetachmentOption;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    }
.end annotation


# instance fields
.field private FLASH_ANNOTATION_APP:Ljava/lang/String;

.field private PIN_MODE_APP:Ljava/lang/String;

.field private QUICK_MEMO_APP:Ljava/lang/String;

.field private idxGap:I

.field private mActivePenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePenPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePenResolveInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mCandidatePenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidatePenPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidatePenResolveInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurCandidatePage:I

.field private mCurPenDetachmentOption:I

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mFromQuickPanel:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIndicatorLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mMaxCandidatePage:I

.field private mPageIndicatorArea:Landroid/widget/LinearLayout;

.field private mPenDetachementOption:Landroid/preference/ListPreference;

.field private mPenPanelArea:Landroid/widget/LinearLayout;

.field private mPenPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    const-string v0, "com.samsung.android.quickmemo"

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->QUICK_MEMO_APP:Ljava/lang/String;

    .line 68
    const-string v0, "com.sec.android.pinmode"

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->PIN_MODE_APP:Ljava/lang/String;

    .line 70
    const-string v0, "com.sec.spen.flashannotate"

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->FLASH_ANNOTATION_APP:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mPenPanelLayoutList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mIndicatorLayoutList:Ljava/util/ArrayList;

    .line 94
    iput-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    .line 98
    iput v1, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    .line 100
    iput v1, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    .line 102
    iput v1, p0, Lcom/android/settings/PenDetachmentOption;->mMaxCandidatePage:I

    .line 104
    iput v1, p0, Lcom/android/settings/PenDetachmentOption;->mCurPenDetachmentOption:I

    .line 106
    iput-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenPanelList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenPanelList:Ljava/util/ArrayList;

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/PenDetachmentOption;->mFromQuickPanel:Z

    .line 124
    new-instance v0, Lcom/android/settings/PenDetachmentOption$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PenDetachmentOption$1;-><init>(Lcom/android/settings/PenDetachmentOption;)V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 134
    new-instance v0, Lcom/android/settings/PenDetachmentOption$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PenDetachmentOption$2;-><init>(Lcom/android/settings/PenDetachmentOption;)V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 156
    new-instance v0, Lcom/android/settings/PenDetachmentOption$3;

    invoke-direct {v0, p0}, Lcom/android/settings/PenDetachmentOption$3;-><init>(Lcom/android/settings/PenDetachmentOption;)V

    iput-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 731
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenDetachmentOption;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/PenDetachmentOption;Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;
    .param p1, "x1"    # Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption;->mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/PenDetachmentOption;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings/PenDetachmentOption;->mFromQuickPanel:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/PenDetachmentOption;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/PenDetachmentOption;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/PenDetachmentOption;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/PenDetachmentOption;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/PenDetachmentOption;->changePenSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->saveAppslist()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PenDetachmentOption;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->updatePenIconSettingsList()V

    return-void
.end method

.method private changePenSettingsByPanel(Landroid/view/View;)V
    .locals 9
    .param p1, "dropView"    # Landroid/view/View;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 625
    .local v2, "longClickedIdx":I
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    if-ge v2, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    .line 626
    .local v1, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    if-lt v2, v0, :cond_1

    .line 627
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    sub-int/2addr v2, v0

    .line 628
    const/4 v5, 0x1

    .line 634
    .local v5, "fromArea":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 635
    .local v4, "dropIdx":I
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    if-ge v4, v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    .line 636
    .local v3, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    if-lt v4, v0, :cond_3

    .line 637
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    sub-int/2addr v4, v0

    .line 638
    const/4 v6, 0x1

    .line 643
    .local v6, "toArea":I
    :goto_3
    const-string v0, "PenDetachmentOption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changePenSettingsByPanel() - longClickedIdx : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dropIdx : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  fromArea : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  toArea  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-direct {p0, v3, v4}, Lcom/android/settings/PenDetachmentOption;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    const-string v0, "PenDetachmentOption"

    const-string v7, "isEmptyPanel"

    invoke-static {v0, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_4
    return-void

    .line 625
    .end local v1    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "dropIdx":I
    .end local v5    # "fromArea":I
    .end local v6    # "toArea":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    goto :goto_0

    .line 630
    .restart local v1    # "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "fromArea":I
    goto :goto_1

    .line 635
    .restart local v4    # "dropIdx":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    goto :goto_2

    .line 640
    .restart local v3    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_3

    :cond_4
    move-object v0, p0

    .line 649
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/PenDetachmentOption;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;III)V

    goto :goto_4
.end method

.method private displayPenIconSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
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
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p4, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p5, "panelViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "penResolveinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v21, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/PenDetachmentOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 463
    .local v10, "inflater":Landroid/view/LayoutInflater;
    mul-int v20, p2, p3

    .line 464
    .local v20, "totalPanelNum":I
    if-nez p1, :cond_1

    const/4 v8, 0x0

    .line 466
    .local v8, "gap":I
    :goto_0
    const/4 v9, 0x0

    .line 467
    .local v9, "idx":I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    .line 468
    const v21, 0x7f040153

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 469
    .local v19, "panelView":Landroid/view/View;
    const v21, 0x7f100269

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 470
    .local v15, "panel":Landroid/widget/LinearLayout;
    const v21, 0x7f1002c7

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 471
    .local v17, "panelImageView":Landroid/widget/ImageView;
    const v21, 0x7f1002c8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 473
    .local v18, "panelTextView":Landroid/widget/TextView;
    const v21, 0x7f040154

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 474
    .local v14, "overlayedPanelView":Landroid/view/View;
    const v21, 0x7f1002cb

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 475
    .local v16, "panelBar":Landroid/widget/ImageView;
    const v21, 0x7f1002cc

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 478
    .local v7, "fakePanel":Landroid/view/View;
    add-int v21, v9, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 479
    add-int v21, v9, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 480
    add-int v21, v9, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    const-string v21, "PenDetachmentOption"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "idx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v21, "PenDetachmentOption"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gap: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v21, "PenDetachmentOption"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "tag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int v23, v9, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v9}, Lcom/android/settings/PenDetachmentOption;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 487
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 489
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 528
    div-int v4, v9, p2

    .line 529
    .local v4, "containerIdx":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 530
    .local v3, "container":Landroid/widget/FrameLayout;
    const v21, 0x7f1002ce

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 532
    .local v13, "notificationPanelLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    const v21, 0x7f1002cf

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 535
    .local v12, "notificationPanelBarLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 464
    .end local v3    # "container":Landroid/widget/FrameLayout;
    .end local v4    # "containerIdx":I
    .end local v7    # "fakePanel":Landroid/view/View;
    .end local v8    # "gap":I
    .end local v9    # "idx":I
    .end local v12    # "notificationPanelBarLayout":Landroid/widget/LinearLayout;
    .end local v13    # "notificationPanelLayout":Landroid/widget/LinearLayout;
    .end local v14    # "overlayedPanelView":Landroid/view/View;
    .end local v15    # "panel":Landroid/widget/LinearLayout;
    .end local v16    # "panelBar":Landroid/widget/ImageView;
    .end local v17    # "panelImageView":Landroid/widget/ImageView;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    goto/16 :goto_0

    .line 494
    .restart local v7    # "fakePanel":Landroid/view/View;
    .restart local v8    # "gap":I
    .restart local v9    # "idx":I
    .restart local v14    # "overlayedPanelView":Landroid/view/View;
    .restart local v15    # "panel":Landroid/widget/LinearLayout;
    .restart local v16    # "panelBar":Landroid/widget/ImageView;
    .restart local v17    # "panelImageView":Landroid/widget/ImageView;
    .restart local v18    # "panelTextView":Landroid/widget/TextView;
    .restart local v19    # "panelView":Landroid/view/View;
    :cond_2
    const v21, 0x7f020509

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 495
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 521
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    .line 497
    :catch_0
    move-exception v5

    .line 498
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v22, "PenDetachmentOption"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "displayPenIconSettings NameNotFoundException : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 502
    .local v2, "PackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->QUICK_MEMO_APP:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 504
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 505
    .local v11, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    const-string v21, "PenDetachmentOption"

    const-string v22, "QUICK_MEMO_APP Found"

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenDetachmentOption;->PIN_MODE_APP:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 514
    const/high16 v21, 0x7f030000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    const v21, 0x7f0a117f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 508
    :catch_1
    move-exception v6

    .line 509
    .local v6, "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "PenDetachmentOption"

    const-string v22, "QUICK_MEMO_APP NameNotFoundException"

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 539
    .end local v2    # "PackageName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .end local v6    # "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "fakePanel":Landroid/view/View;
    .end local v14    # "overlayedPanelView":Landroid/view/View;
    .end local v15    # "panel":Landroid/widget/LinearLayout;
    .end local v16    # "panelBar":Landroid/widget/ImageView;
    .end local v17    # "panelImageView":Landroid/widget/ImageView;
    .end local v18    # "panelTextView":Landroid/widget/TextView;
    .end local v19    # "panelView":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private getLauncherApplist()V
    .locals 11

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "LauncherIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x20

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    .line 547
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 548
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->QUICK_MEMO_APP:Ljava/lang/String;

    iput-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 549
    const-string v7, "com.samsung.android.quickmemo.QuickMemo_Service"

    iput-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 551
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 552
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 554
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v1, Landroid/content/pm/ActivityInfo;

    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 557
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->PIN_MODE_APP:Ljava/lang/String;

    iput-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 558
    const-string v7, "com.sec.android.pinmode.PinModeActivity"

    iput-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 560
    new-instance v5, Landroid/content/pm/ResolveInfo;

    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 561
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 563
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/settings/PenDetachmentOption;->FLASH_ANNOTATION_APP:Ljava/lang/String;

    const-string v10, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 569
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 570
    .local v6, "resolveinfo":Landroid/content/pm/ResolveInfo;
    iput-object v4, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 571
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 573
    .local v2, "appName":Ljava/lang/String;
    const-string v7, "PenDetachmentOption"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLauncherApplist appName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v2    # "appName":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "resolveinfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x14

    iput v7, p0, Lcom/android/settings/PenDetachmentOption;->mMaxCandidatePage:I

    .line 579
    return-void

    .line 574
    :catch_0
    move-exception v3

    .line 575
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PenDetachmentOption"

    const-string v8, "flashannotate cannot find app name !"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .line 654
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 655
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 656
    const/4 v0, 0x1

    .line 658
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 8

    .prologue
    .line 582
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 583
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 584
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_panel_active_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "penActiveApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_option"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/PenDetachmentOption;->mCurPenDetachmentOption:I

    .line 589
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "activeApps":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 593
    .local v4, "penAppInfoName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 596
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 599
    aget-object v5, v0, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 600
    const-string v5, "PenDetachmentOption"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activeAPP penAppInfoName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v1    # "i":I
    :cond_2
    iget v5, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    mul-int/lit8 v2, v5, 0x14

    .line 608
    :goto_2
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_4

    .line 609
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 608
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 616
    :cond_3
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/PenDetachmentOption;->mAppList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 619
    :cond_4
    return-void
.end method

.method private refreshUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 707
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v1

    .line 709
    .local v1, "isRemoved":Z
    const-string v5, "PenDetachmentOption"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshUI() - isRemoved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v1    # "isRemoved":Z
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/PenDetachmentOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 713
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040155

    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 714
    .local v2, "penSettingView":Landroid/view/View;
    const v5, 0x7f1002c1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mPenPanelArea:Landroid/widget/LinearLayout;

    .line 715
    const v5, 0x7f1002c3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    .line 716
    const v5, 0x7f1002d9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mPageIndicatorArea:Landroid/widget/LinearLayout;

    .line 717
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->updatePenIconSettingsList()V

    .line 718
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->updatePageIndicator()V

    .line 721
    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 722
    .local v4, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0a1885

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 725
    const v5, 0x1020010

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 726
    .local v3, "tvSummary":Landroid/widget/TextView;
    const v5, 0x7f0a1886

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v8, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 728
    iput-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    .line 729
    return-void
.end method

.method private saveAppslist()V
    .locals 6

    .prologue
    .line 690
    const-string v0, ""

    .line 692
    .local v0, "dbAppInfo":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 694
    .local v2, "penAppInfoName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v2    # "penAppInfoName":Ljava/lang/String;
    :cond_0
    const-string v3, "PenDetachmentOption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAppslist() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_detachment_option"

    iget v5, p0, Lcom/android/settings/PenDetachmentOption;->mCurPenDetachmentOption:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_panel_active_app"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 703
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;III)V
    .locals 4
    .param p2, "longClickedIdx"    # I
    .param p4, "dropIdx"    # I
    .param p5, "from"    # I
    .param p6, "to"    # I
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
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p1, "longClickedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "dropList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 663
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 664
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-virtual {p3, p4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 668
    if-ne p5, v3, :cond_1

    if-nez p6, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 670
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    if-nez p5, :cond_2

    if-nez p6, :cond_2

    .line 673
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 674
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 676
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez p5, :cond_3

    if-ne p6, v3, :cond_3

    .line 677
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 678
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 680
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-ne p5, v3, :cond_0

    if-ne p6, v3, :cond_0

    .line 681
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 682
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updatePageIndicator()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 383
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mPageIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 384
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mIndicatorLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 386
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/PenDetachmentOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 388
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0400e9

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 389
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mIndicatorLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption;->mPageIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    iget v5, p0, Lcom/android/settings/PenDetachmentOption;->mMaxCandidatePage:I

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_1

    .line 393
    const v5, 0x7f0400ea

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, "iconView":Landroid/view/View;
    const v5, 0x7f1001eb

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 397
    .local v3, "indicatorLayout":Landroid/widget/LinearLayout;
    iget v5, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    if-ne v2, v5, :cond_0

    .line 398
    const v5, 0x7f0204aa

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "iconView":Landroid/view/View;
    .end local v3    # "indicatorLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private updatePenIconSettingsList()V
    .locals 17

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mPenPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mPenPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenPanelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenPanelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 415
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 416
    const/4 v3, 0x5

    .line 420
    .local v3, "oneLinePanelNum":I
    :goto_0
    const-string v1, "PenDetachmentOption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oneLinePanelNum: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v1, v3

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int v4, v1, v3

    .line 424
    .local v4, "notiPanelLines":I
    :goto_1
    const-string v1, "PenDetachmentOption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notiPanelLines: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    mul-int v1, v3, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/PenDetachmentOption;->idxGap:I

    .line 428
    const-string v1, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/PenDetachmentOption;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 429
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v4, :cond_2

    .line 430
    const v1, 0x7f0401bf

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 432
    .local v13, "container":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mPenPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mPenPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 418
    .end local v3    # "oneLinePanelNum":I
    .end local v4    # "notiPanelLines":I
    .end local v13    # "container":Landroid/widget/FrameLayout;
    .end local v14    # "i":I
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const/16 v3, 0xa

    .restart local v3    # "oneLinePanelNum":I
    goto :goto_0

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x1

    goto :goto_1

    .line 436
    .restart local v4    # "notiPanelLines":I
    .restart local v14    # "i":I
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/PenDetachmentOption;->mPenPanelLayoutList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenPanelList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/PenDetachmentOption;->mActivePenResolveInfo:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/PenDetachmentOption;->displayPenIconSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 439
    const/16 v1, 0x14

    div-int v8, v1, v3

    .line 440
    .local v8, "availBtnlLines":I
    const-string v1, "PenDetachmentOption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "availBtnlLines: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez v8, :cond_3

    .line 443
    const/4 v8, 0x1

    .line 446
    :cond_3
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v8, :cond_4

    .line 447
    const v1, 0x7f0401bf

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 449
    .restart local v13    # "container":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PenDetachmentOption;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 453
    .end local v13    # "container":Landroid/widget/FrameLayout;
    :cond_4
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/PenDetachmentOption;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenPanelList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/PenDetachmentOption;->mCandidatePenResolveInfo:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move v7, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/PenDetachmentOption;->displayPenIconSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 455
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    .line 255
    const-string v0, "PenDetachmentOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v0, "PenDetachmentOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mFromQuickPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/PenDetachmentOption;->mFromQuickPanel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PenDetachmentOption$4;

    invoke-direct {v1, p0}, Lcom/android/settings/PenDetachmentOption$4;-><init>(Lcom/android/settings/PenDetachmentOption;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 277
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->refreshUI()V

    .line 278
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 279
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    const-string v0, "PenDetachmentOption"

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

    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget v0, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 377
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentOrientation:I

    .line 378
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->refreshUI()V

    .line 380
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "direct_quickpanel"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/PenDetachmentOption;->mFromQuickPanel:Z

    .line 218
    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/android/settings/PenDetachmentOption;->addPreferencesFromResource(I)V

    .line 220
    const-string v1, "pen_detach_option"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenDetachmentOption;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    .line 221
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_option"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mGestureDetector:Landroid/view/GestureDetector;

    .line 227
    iput v4, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    .line 228
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->getLauncherApplist()V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->loadAppslist()V

    .line 230
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "distance":F
    const/4 v1, 0x0

    .line 286
    .local v1, "isLeftToRight":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 288
    const/4 v1, 0x1

    .line 294
    :goto_0
    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 295
    if-eqz v1, :cond_3

    .line 296
    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    .line 298
    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    if-gez v2, :cond_0

    .line 299
    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mMaxCandidatePage:I

    iput v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    .line 306
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->loadAppslist()V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/PenDetachmentOption;->refreshUI()V

    .line 309
    :cond_1
    const-string v2, "PenDetachmentOption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFling   e1.getX() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   e2.getX() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v2, 0x1

    return v2

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 291
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    :cond_3
    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    .line 303
    iget v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    iget v3, p0, Lcom/android/settings/PenDetachmentOption;->mMaxCandidatePage:I

    if-le v2, v3, :cond_0

    .line 304
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/PenDetachmentOption;->mCurCandidatePage:I

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 322
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 364
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "key":Ljava/lang/String;
    const-string v3, "PenDetachmentOption"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v3, "pen_detach_option"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 240
    .local v2, "value":I
    :try_start_0
    const-string v3, "PenDetachmentOption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(PEN_DETACHMENT_OPTION): value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/PenDetachmentOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_detachment_option"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/PenDetachmentOption;->mPenDetachementOption:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2    # "value":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 245
    .restart local v2    # "value":I
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "PenDetachmentOption"

    const-string v4, "could not persist pen setting"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 359
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "distance":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 337
    :goto_0
    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 343
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 348
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method
