.class Landroid/preference/PreferenceActivity$7;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .registers 2

    .prologue
    .line 937
    iput-object p1, p0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$600(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-nez v23, :cond_f

    .line 942
    const/16 v23, 0x0

    .line 1053
    .end local p1    # "v":Landroid/view/View;
    :goto_e
    return v23

    .line 945
    .restart local p1    # "v":Landroid/view/View;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 946
    .local v2, "action":I
    const/4 v15, 0x0

    .line 947
    .local v15, "splitBar":Landroid/view/View;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v23, v0

    if-eqz v23, :cond_28

    .line 948
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 951
    :cond_28
    if-nez v15, :cond_2d

    .line 952
    const/16 v23, 0x0

    goto :goto_e

    .line 955
    :cond_2d
    if-nez v2, :cond_44

    .line 957
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    .line 1053
    :goto_41
    const/16 v23, 0x1

    goto :goto_e

    .line 960
    :cond_44
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v2, v0, :cond_1c3

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 962
    .local v16, "splitBarwidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 964
    .local v12, "parentLayoutWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 965
    .local v19, "touchX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getX()F

    move-result v11

    .line 966
    .local v11, "newSplitBarPosX":F
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v10, v11, v23

    .line 967
    .local v10, "newSplitBarCenterPosX":F
    add-float v20, v11, v19

    .line 969
    .local v20, "touchXInParentRect":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_168

    int-to-float v0, v12

    move/from16 v23, v0

    cmpg-float v23, v20, v23

    if-gtz v23, :cond_168

    .line 971
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v19, v23

    add-float v10, v10, v23

    .line 974
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    .line 975
    .local v17, "splitRatio":F
    const v23, 0x3f28f5c3    # 0.66f

    cmpl-float v23, v17, v23

    if-lez v23, :cond_143

    .line 976
    int-to-float v0, v12

    move/from16 v23, v0

    const v24, 0x3f28f5c3    # 0.66f

    mul-float v10, v23, v24

    .line 985
    :cond_b8
    :goto_b8
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    .line 1007
    .end local v17    # "splitRatio":F
    :cond_db
    :goto_db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_136

    .line 1008
    const/16 v23, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$1102(Z)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const v24, 0x1020409

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1010
    .local v4, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1012
    .local v7, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1015
    .local v14, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1016
    .local v5, "leftPanelWeight":F
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1017
    .local v13, "rightPanelWeight":F
    add-float v21, v5, v13

    .line 1019
    .local v21, "weightSum":F
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v6, v10, v23

    .line 1021
    .local v6, "leftPanelWidthRatio":F
    mul-float v8, v21, v6

    .line 1022
    .local v8, "newLeftPanelWeight":F
    sub-float v9, v21, v8

    .line 1024
    .local v9, "newRightPanelWeight":F
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1025
    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1026
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v5    # "leftPanelWeight":F
    .end local v6    # "leftPanelWidthRatio":F
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "newLeftPanelWeight":F
    .end local v9    # "newRightPanelWeight":F
    .end local v13    # "rightPanelWeight":F
    .end local v14    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "weightSum":F
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_41

    .line 977
    .restart local v17    # "splitRatio":F
    :cond_143
    const v23, 0x3da3d70a    # 0.08f

    cmpg-float v23, v17, v23

    if-gez v23, :cond_b8

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 979
    .local v3, "d":Landroid/util/DisplayMetrics;
    const/16 v23, 0x1

    const/high16 v24, 0x41400000    # 12.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    .line 982
    .local v18, "splitXinFullview":F
    move/from16 v10, v18

    goto/16 :goto_b8

    .line 988
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v17    # "splitRatio":F
    .end local v18    # "splitXinFullview":F
    :cond_168
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_db

    const/16 v23, 0x0

    cmpl-float v23, v20, v23

    if-ltz v23, :cond_db

    .line 990
    add-float v10, v10, v19

    .line 993
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    .line 994
    .restart local v17    # "splitRatio":F
    const v23, 0x3da3d70a    # 0.08f

    cmpg-float v23, v17, v23

    if-gez v23, :cond_19e

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 996
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v23, 0x1

    const/high16 v24, 0x41400000    # 12.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    .line 999
    .restart local v18    # "splitXinFullview":F
    move/from16 v10, v18

    .line 1002
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v18    # "splitXinFullview":F
    :cond_19e
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_db

    .line 1030
    .end local v10    # "newSplitBarCenterPosX":F
    .end local v11    # "newSplitBarPosX":F
    .end local v12    # "parentLayoutWidth":I
    .end local v16    # "splitBarwidth":I
    .end local v17    # "splitRatio":F
    .end local v19    # "touchX":F
    .end local v20    # "touchXInParentRect":F
    :cond_1c3
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_1fa

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const v24, 0x1020409

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1033
    .restart local v4    # "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1036
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static {}, Landroid/preference/PreferenceActivity;->access$1200()F

    move-result v23

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_1f1

    .line 1037
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v23, v0

    # setter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$1202(F)F

    .line 1041
    :cond_1f1
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_41

    .line 1043
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v22, v23, v24

    .line 1044
    .local v22, "x":F
    const/16 v23, 0x0

    cmpg-float v23, v22, v23

    if-gez v23, :cond_227

    .line 1045
    const/16 v22, 0x0

    .line 1047
    :cond_227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    .line 1051
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_41
.end method
