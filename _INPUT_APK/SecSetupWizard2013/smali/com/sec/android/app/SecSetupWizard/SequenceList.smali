.class public Lcom/sec/android/app/SecSetupWizard/SequenceList;
.super Ljava/lang/Object;
.source "SequenceList.java"


# instance fields
.field private mCurrentSequence:Ljava/lang/String;

.field private mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/SecSetupWizard/SequenceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v2, "SequenceList"

    const-string v3, "sequence list is made"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    .line 21
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    const-string v2, "complete"

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 22
    .local v1, "startItem":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    const-string v3, "start"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    invoke-direct {v0, v4, v4}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 25
    .local v0, "completeItem":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    const-string v3, "complete"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v2, "start"

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private getPreviousItemKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 139
    const-string v4, "start"

    .line 140
    .local v4, "previous_item_key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 141
    .local v3, "previous_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 142
    .local v2, "list_length":I
    const/4 v0, 0x0

    .line 143
    .local v0, "find_flag":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 144
    const-string v6, "complete"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v4, :cond_2

    .line 158
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 159
    const-string v6, "SequenceList"

    const-string v7, "cannot find previous item "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 163
    .end local v4    # "previous_item_key":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v4

    .line 147
    .restart local v4    # "previous_item_key":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "previous_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    check-cast v3, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    .line 148
    .restart local v3    # "previous_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    if-nez v3, :cond_3

    .line 149
    const-string v6, "SequenceList"

    const-string v7, "getPreviousItemKey previous_item is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 150
    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getNext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 153
    const/4 v0, 0x1

    .line 154
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getNext()Ljava/lang/String;

    move-result-object v4

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public findByKey(Ljava/lang/String;)Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    return-object v0
.end method

.method public getCurrent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentItem()Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getNext()Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->getNext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getPreviousItemKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    return-object v0
.end method

.method public initSequenceList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    const-string v2, "SequenceList"

    const-string v3, "init sequence list"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    .line 34
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    const-string v2, "complete"

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 35
    .local v1, "startItem":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    const-string v3, "start"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    invoke-direct {v0, v4, v4}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 38
    .local v0, "completeItem":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    const-string v3, "complete"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "start"

    iput-object v2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mCurrentSequence:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "new_item_key"    # Ljava/lang/String;
    .param p2, "new_item_intent"    # Landroid/content/Intent;
    .param p3, "reqCode"    # I

    .prologue
    .line 49
    const-string v0, "complete"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->insertPreviousItem(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public insertPreviousItem(Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)Z
    .locals 5
    .param p1, "new_item_key"    # Ljava/lang/String;
    .param p2, "new_item_intent"    # Landroid/content/Intent;
    .param p3, "reqCode"    # I
    .param p4, "position_key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p4}, Lcom/sec/android/app/SecSetupWizard/SequenceList;->getPreviousItemKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "previous_item_key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 84
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    .line 85
    .local v1, "previous_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;

    invoke-direct {v0, p2, p3, p4}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;-><init>(Landroid/content/Intent;ILjava/lang/String;)V

    .line 86
    .local v0, "new_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    iget-object v4, p0, Lcom/sec/android/app/SecSetupWizard/SequenceList;->mList:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    if-nez v1, :cond_1

    .line 92
    .end local v0    # "new_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .end local v1    # "previous_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_0
    :goto_0
    return v3

    .line 89
    .restart local v0    # "new_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    .restart local v1    # "previous_item":Lcom/sec/android/app/SecSetupWizard/SequenceItem;
    :cond_1
    invoke-virtual {v1, p1}, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->setNext(Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x1

    goto :goto_0
.end method
