.class public Lcom/android/systemui/cooldown/Overheat;
.super Landroid/app/Activity;
.source "Overheat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OverheatReceiver"

.field private static package_Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/cooldown/Overheat;->requestWindowFeature(I)Z

    .line 32
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/android/systemui/cooldown/Overheat;->setContentView(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/cooldown/Overheat;->showDialog(I)V

    .line 34
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 19
    .param p1, "id"    # I

    .prologue
    .line 38
    const-string v17, "ro.build.characteristics"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 39
    .local v11, "mDeviceType":Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v17, "tablet"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v12, 0x1

    .line 41
    .local v12, "mIsTablet":Z
    :goto_0
    const-string v17, "ro.csc.sales_code"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 42
    .local v13, "mSalesCode":Ljava/lang/String;
    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 43
    .local v10, "isVZW":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 45
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 46
    .local v9, "factory":Landroid/view/LayoutInflater;
    const v17, 0x7f040050

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 49
    .local v15, "popupEntryView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0482

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 51
    .local v16, "title":Ljava/lang/String;
    const v3, 0x7f0d0487

    .line 52
    .local v3, "btnPositiveText":I
    const v17, 0x7f0e01c1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 54
    .local v5, "checkBox":Landroid/widget/CheckBox;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const v17, 0x7f0e01c2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, "addMsg":Landroid/widget/TextView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0489

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "description":Ljava/lang/String;
    :goto_1
    const v17, 0x7f0e01c0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 68
    .local v14, "msg":Landroid/widget/TextView;
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/systemui/cooldown/Overheat$1;

    invoke-direct/range {v18 .. v19}, Lcom/android/systemui/cooldown/Overheat$1;-><init>(Lcom/android/systemui/cooldown/Overheat;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 81
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .local v7, "dlg":Landroid/app/AlertDialog;
    move-object v8, v7

    .line 114
    .end local v7    # "dlg":Landroid/app/AlertDialog;
    .local v8, "dlg":Landroid/app/AlertDialog;
    :goto_2
    return-object v8

    .line 39
    .end local v2    # "addMsg":Landroid/widget/TextView;
    .end local v3    # "btnPositiveText":I
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    .end local v6    # "description":Ljava/lang/String;
    .end local v8    # "dlg":Landroid/app/AlertDialog;
    .end local v9    # "factory":Landroid/view/LayoutInflater;
    .end local v10    # "isVZW":Z
    .end local v12    # "mIsTablet":Z
    .end local v13    # "mSalesCode":Ljava/lang/String;
    .end local v14    # "msg":Landroid/widget/TextView;
    .end local v15    # "popupEntryView":Landroid/view/View;
    .end local v16    # "title":Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 62
    .restart local v2    # "addMsg":Landroid/widget/TextView;
    .restart local v3    # "btnPositiveText":I
    .restart local v5    # "checkBox":Landroid/widget/CheckBox;
    .restart local v9    # "factory":Landroid/view/LayoutInflater;
    .restart local v10    # "isVZW":Z
    .restart local v12    # "mIsTablet":Z
    .restart local v13    # "mSalesCode":Ljava/lang/String;
    .restart local v15    # "popupEntryView":Landroid/view/View;
    .restart local v16    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0483

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "description":Ljava/lang/String;
    goto :goto_1

    .line 85
    .end local v2    # "addMsg":Landroid/widget/TextView;
    .end local v3    # "btnPositiveText":I
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    .end local v6    # "description":Ljava/lang/String;
    .end local v9    # "factory":Landroid/view/LayoutInflater;
    .end local v15    # "popupEntryView":Landroid/view/View;
    .end local v16    # "title":Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 86
    .restart local v9    # "factory":Landroid/view/LayoutInflater;
    const v17, 0x7f040050

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 89
    .restart local v15    # "popupEntryView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d047a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 91
    .restart local v16    # "title":Ljava/lang/String;
    const v3, 0x7f0d0467

    .line 92
    .restart local v3    # "btnPositiveText":I
    const v17, 0x7f0e01c1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 94
    .restart local v5    # "checkBox":Landroid/widget/CheckBox;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v17, 0x7f0e01c2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    .restart local v2    # "addMsg":Landroid/widget/TextView;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d047b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .restart local v6    # "description":Ljava/lang/String;
    const v17, 0x7f0e01c0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 100
    .restart local v14    # "msg":Landroid/widget/TextView;
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/systemui/cooldown/Overheat$2;

    invoke-direct/range {v18 .. v19}, Lcom/android/systemui/cooldown/Overheat$2;-><init>(Lcom/android/systemui/cooldown/Overheat;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 113
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .restart local v7    # "dlg":Landroid/app/AlertDialog;
    move-object v8, v7

    .line 114
    .end local v7    # "dlg":Landroid/app/AlertDialog;
    .restart local v8    # "dlg":Landroid/app/AlertDialog;
    goto/16 :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 123
    return-void
.end method
