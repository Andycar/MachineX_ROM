.class public Lcom/android/systemui/cooldown/SafeMode;
.super Landroid/app/Activity;
.source "SafeMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field private static final TAG:Ljava/lang/String; = "SafeMode"

.field private static package_Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/cooldown/SafeMode;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/android/systemui/cooldown/SafeMode;->setContentView(I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/cooldown/SafeMode;->showDialog(I)V

    .line 38
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 20
    .param p1, "id"    # I

    .prologue
    .line 42
    const-string v18, "ro.build.characteristics"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 43
    .local v12, "mDeviceType":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v18, "tablet"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v13, 0x1

    .line 45
    .local v13, "mIsTablet":Z
    :goto_0
    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 46
    .local v14, "mSalesCode":Ljava/lang/String;
    const-string v18, "VZW"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 47
    .local v11, "isVZW":Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    .line 49
    const-string v18, "SafeMode"

    const-string v19, "In VZW"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 51
    .local v10, "factory":Landroid/view/LayoutInflater;
    const v18, 0x7f040077

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 54
    .local v16, "popupEntryView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d048f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, "title":Ljava/lang/String;
    const v4, 0x7f0d0492

    .line 57
    .local v4, "btnPositiveText":I
    const v3, 0x7f0d0491

    .line 58
    .local v3, "btnCancelText":I
    const v18, 0x7f0e01c1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 60
    .local v6, "checkBox":Landroid/widget/CheckBox;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v18, 0x7f0e01c2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "addMsg":Landroid/widget/TextView;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0490

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "description":Ljava/lang/String;
    const v18, 0x7f0e01c0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 71
    .local v15, "msg":Landroid/widget/TextView;
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/systemui/cooldown/SafeMode$2;

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/cooldown/SafeMode$2;-><init>(Lcom/android/systemui/cooldown/SafeMode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/systemui/cooldown/SafeMode$1;

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/cooldown/SafeMode$1;-><init>(Lcom/android/systemui/cooldown/SafeMode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 101
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .local v8, "dlg":Landroid/app/AlertDialog;
    move-object v9, v8

    .line 159
    .end local v8    # "dlg":Landroid/app/AlertDialog;
    .local v9, "dlg":Landroid/app/AlertDialog;
    :goto_1
    return-object v9

    .line 43
    .end local v2    # "addMsg":Landroid/widget/TextView;
    .end local v3    # "btnCancelText":I
    .end local v4    # "btnPositiveText":I
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "checkBox":Landroid/widget/CheckBox;
    .end local v7    # "description":Ljava/lang/String;
    .end local v9    # "dlg":Landroid/app/AlertDialog;
    .end local v10    # "factory":Landroid/view/LayoutInflater;
    .end local v11    # "isVZW":Z
    .end local v13    # "mIsTablet":Z
    .end local v14    # "mSalesCode":Ljava/lang/String;
    .end local v15    # "msg":Landroid/widget/TextView;
    .end local v16    # "popupEntryView":Landroid/view/View;
    .end local v17    # "title":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v11    # "isVZW":Z
    .restart local v13    # "mIsTablet":Z
    .restart local v14    # "mSalesCode":Ljava/lang/String;
    :cond_1
    const-string v18, "SafeMode"

    const-string v19, "Not VZW this is Global"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 107
    .restart local v10    # "factory":Landroid/view/LayoutInflater;
    const v18, 0x7f040077

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 110
    .restart local v16    # "popupEntryView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d048a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 112
    .restart local v17    # "title":Ljava/lang/String;
    const v4, 0x7f0d048c

    .line 113
    .restart local v4    # "btnPositiveText":I
    const v3, 0x7f0d0491

    .line 114
    .restart local v3    # "btnCancelText":I
    const v18, 0x7f0e01c1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 116
    .restart local v6    # "checkBox":Landroid/widget/CheckBox;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v18, 0x7f0e01c2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .restart local v2    # "addMsg":Landroid/widget/TextView;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d048b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    .restart local v7    # "description":Ljava/lang/String;
    const v18, 0x7f0e01c0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 127
    .restart local v15    # "msg":Landroid/widget/TextView;
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/systemui/cooldown/SafeMode$4;

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/cooldown/SafeMode$4;-><init>(Lcom/android/systemui/cooldown/SafeMode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/systemui/cooldown/SafeMode$3;

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/cooldown/SafeMode$3;-><init>(Lcom/android/systemui/cooldown/SafeMode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 158
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .restart local v8    # "dlg":Landroid/app/AlertDialog;
    move-object v9, v8

    .line 159
    .end local v8    # "dlg":Landroid/app/AlertDialog;
    .restart local v9    # "dlg":Landroid/app/AlertDialog;
    goto/16 :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    return-void
.end method
