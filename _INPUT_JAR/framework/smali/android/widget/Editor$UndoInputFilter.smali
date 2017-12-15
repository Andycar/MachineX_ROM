.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field final mEditor:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .registers 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5819
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 5820
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 5829
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 5830
    .local v2, "um":Landroid/content/UndoManager;
    invoke-virtual {v2}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5895
    :goto_c
    return-object v6

    .line 5835
    :cond_d
    const-string v3, "Edit text"

    invoke-virtual {v2, v3}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 5836
    const-class v3, Landroid/widget/Editor$TextModifyOperation;

    iget-object v4, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$TextModifyOperation;

    .line 5838
    .local v0, "op":Landroid/widget/Editor$TextModifyOperation;
    if-eqz v0, :cond_6d

    .line 5842
    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    if-nez v3, :cond_40

    .line 5846
    if-ge p2, p3, :cond_65

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    if-lt p5, v3, :cond_2f

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-le p6, v3, :cond_37

    :cond_2f
    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p5, v3, :cond_65

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p6, v3, :cond_65

    .line 5848
    :cond_37
    sub-int v3, p3, p2

    add-int/2addr v3, p5

    iput v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 5849
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto :goto_c

    .line 5856
    :cond_40
    if-ne p2, p3, :cond_65

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    add-int/lit8 v3, v3, -0x1

    if-ne p6, v3, :cond_65

    .line 5858
    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/SpannableString;

    if-eqz v3, :cond_5d

    .line 5859
    iget-object v1, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 5863
    .local v1, "str":Landroid/text/SpannableStringBuilder;
    :goto_52
    invoke-virtual {v1, v7, p4, p5, p6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 5864
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 5865
    iput-object v1, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 5866
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto :goto_c

    .line 5861
    .end local v1    # "str":Landroid/text/SpannableStringBuilder;
    :cond_5d
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "str":Landroid/text/SpannableStringBuilder;
    goto :goto_52

    .line 5876
    .end local v1    # "str":Landroid/text/SpannableStringBuilder;
    :cond_65
    invoke-virtual {v2, v6}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5877
    const-string v3, "Edit text"

    invoke-virtual {v2, v3}, Landroid/content/UndoManager;->setUndoLabel(Ljava/lang/CharSequence;)V

    .line 5881
    :cond_6d
    new-instance v0, Landroid/widget/Editor$TextModifyOperation;

    .end local v0    # "op":Landroid/widget/Editor$TextModifyOperation;
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    invoke-direct {v0, v3}, Landroid/widget/Editor$TextModifyOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 5882
    .restart local v0    # "op":Landroid/widget/Editor$TextModifyOperation;
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 5883
    if-ge p2, p3, :cond_8f

    .line 5884
    sub-int v3, p3, p2

    add-int/2addr v3, p5

    iput v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 5888
    :goto_7f
    if-ge p5, p6, :cond_87

    .line 5889
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 5893
    :cond_87
    invoke-virtual {v2, v0, v7}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 5894
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto/16 :goto_c

    .line 5886
    :cond_8f
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    goto :goto_7f
.end method
