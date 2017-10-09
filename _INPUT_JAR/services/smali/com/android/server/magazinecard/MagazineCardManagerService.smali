.class public Lcom/android/server/magazinecard/MagazineCardManagerService;
.super Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;
.source "MagazineCardManagerService.java"


# static fields
.field private static final MSG_SEND_CARD_UPDATED_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MagazineCardManagerService"


# instance fields
.field private mCardRecordArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastAllocatedRecordId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/android/server/magazinecard/MagazineCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/magazinecard/MagazineCardManagerService$1;-><init>(Lcom/android/server/magazinecard/MagazineCardManagerService;)V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, "MagazineCardManagerService"

    const-string v1, "MagazineCardManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/android/server/magazinecard/MagazineCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/magazinecard/MagazineCardManagerService$1;-><init>(Lcom/android/server/magazinecard/MagazineCardManagerService;)V

    iput-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "MagazineCardManagerService"

    const-string v1, "MagazineCardManagerService(Context, WindowManagerService)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/magazinecard/MagazineCardManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/magazinecard/MagazineCardManagerService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findRecordIndex(ILandroid/content/ComponentName;I)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "magazineCardInfoId"    # I

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 96
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_5c

    .line 97
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 99
    .local v1, "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    if-ne v3, p3, :cond_59

    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_59

    iget-object v3, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v3, p1, :cond_59

    .line 103
    const-string v3, "MagazineCardManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findRecordIndex : Found U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :goto_58
    return v0

    .line 96
    .restart local v0    # "i":I
    .restart local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 107
    .end local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_5c
    const-string v3, "MagazineCardManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findRecordIndex : Not found U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, -0x1

    goto :goto_58
.end method

.method private getNewRecordId()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    .line 91
    iget v0, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mLastAllocatedRecordId:I

    return v0
.end method

.method private sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 5
    .param p1, "command"    # I
    .param p2, "cardRecord"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public declared-synchronized addCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    const-string v3, "MagazineCardManagerService"

    const-string v4, "addCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz p2, :cond_c

    if-nez p3, :cond_15

    .line 178
    :cond_c
    const-string v3, "MagazineCardManagerService"

    const-string v4, "addCard : empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 193
    :goto_13
    monitor-exit p0

    return-void

    .line 183
    :cond_15
    :try_start_15
    iget v3, p3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v1

    .line 184
    .local v1, "recordIndex":I
    if-ltz v1, :cond_29

    .line 185
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 186
    .local v2, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V

    .line 189
    .end local v2    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_29
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {p0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->getNewRecordId()I

    move-result v3

    invoke-direct {v0, v3, p3, p2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V

    .line 191
    .local v0, "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3d

    goto :goto_13

    .line 176
    .end local v0    # "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .end local v1    # "recordIndex":I
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .registers 6
    .param p1, "cardRecordId"    # I

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    const-string v2, "MagazineCardManagerService"

    const-string v3, "getCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 166
    .local v0, "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget v2, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_22

    if-ne v2, p1, :cond_e

    .line 170
    .end local v0    # "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :goto_1e
    monitor-exit p0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1e

    .line 164
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCardRecordIdList(IZ)[I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "securityMode"    # Z

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    const-string v5, "MagazineCardManagerService"

    const-string v6, "getCardRecordIdList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "cardIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 133
    .local v2, "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v5, p1, :cond_13

    .line 134
    const-string v5, "MagazineCardManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCardRecordIdList : U"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v7, v7, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " C"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v7, v7, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v7, v7, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p2, :cond_8f

    .line 142
    iget-object v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_13

    .line 143
    iget v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_8c

    goto :goto_13

    .line 128
    .end local v1    # "cardIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_8c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 146
    .restart local v1    # "cardIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_8f
    :try_start_8f
    iget-object v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v5, v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_13

    .line 147
    iget v5, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 154
    .end local v2    # "cur":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_a3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 155
    .local v0, "cardIdArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_aa
    array-length v5, v0

    if-ge v3, v5, :cond_bc

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3
    :try_end_b9
    .catchall {:try_start_8f .. :try_end_b9} :catchall_8c

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    .line 158
    :cond_bc
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isCardExist(ILandroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "cardId"    # I

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    const/4 v0, 0x1

    .line 265
    .local v0, "isExist":Z
    :goto_9
    const-string v1, "MagazineCardManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardExist : C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2f

    .line 266
    monitor-exit p0

    return v0

    .line 264
    .end local v0    # "isExist":Z
    :cond_2d
    const/4 v0, 0x0

    goto :goto_9

    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllCard(ILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    const-string v4, "MagazineCardManagerService"

    const-string/jumbo v5, "removeAllCard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 248
    .local v2, "recordCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_6c

    .line 249
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 250
    .local v1, "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget-object v4, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_69

    iget-object v4, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v4, v4, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    if-ne v4, p1, :cond_69

    .line 253
    const-string v4, "MagazineCardManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllCard : Removing U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v6, v6, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 256
    .local v3, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const/4 v4, 0x3

    invoke-direct {p0, v4, v3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6e

    .line 248
    .end local v3    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 259
    .end local v1    # "record":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_6c
    monitor-exit p0

    return-void

    .line 245
    .end local v0    # "i":I
    .end local v2    # "recordCount":I
    :catchall_6e
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeCard(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "cardId"    # I

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    const-string v3, "MagazineCardManagerService"

    const-string/jumbo v4, "removeCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "isDeleted":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v1

    .line 234
    .local v1, "recordIndex":I
    if-ltz v1, :cond_1e

    .line 235
    iget-object v3, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 236
    .local v2, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_38

    .line 240
    .end local v2    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :goto_1c
    monitor-exit p0

    return-void

    .line 238
    :cond_1e
    :try_start_1e
    const-string v3, "MagazineCardManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCard : Cannot find the card : C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_38

    goto :goto_1c

    .line 229
    .end local v0    # "isDeleted":Z
    .end local v1    # "recordIndex":I
    :catchall_38
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    const-string v4, "MagazineCardManagerService"

    const-string/jumbo v5, "updateCard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz p2, :cond_d

    if-nez p3, :cond_17

    .line 201
    :cond_d
    const-string v4, "MagazineCardManagerService"

    const-string/jumbo v5, "updateCard : empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_42

    .line 224
    :goto_15
    monitor-exit p0

    return-void

    .line 206
    :cond_17
    :try_start_17
    iget v4, p3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/magazinecard/MagazineCardManagerService;->findRecordIndex(ILandroid/content/ComponentName;I)I

    move-result v2

    .line 207
    .local v2, "recordIndex":I
    const/4 v1, -0x1

    .line 208
    .local v1, "recordId":I
    if-ltz v2, :cond_2a

    .line 209
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 210
    .local v3, "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    iget v1, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    .line 212
    .end local v3    # "removedRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :cond_2a
    const/4 v4, -0x1

    if-ne v1, v4, :cond_31

    .line 213
    invoke-direct {p0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->getNewRecordId()I

    move-result v1

    .line 216
    :cond_31
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;

    invoke-direct {v0, v1, p3, p2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V

    .line 217
    .local v0, "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    if-ltz v2, :cond_45

    .line 218
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 219
    const/4 v4, 0x2

    invoke-direct {p0, v4, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_42

    goto :goto_15

    .line 198
    .end local v0    # "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .end local v1    # "recordId":I
    .end local v2    # "recordIndex":I
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4

    .line 221
    .restart local v0    # "cardRecord":Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .restart local v1    # "recordId":I
    .restart local v2    # "recordIndex":I
    :cond_45
    :try_start_45
    iget-object v4, p0, Lcom/android/server/magazinecard/MagazineCardManagerService;->mCardRecordArray:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 222
    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/server/magazinecard/MagazineCardManagerService;->sendCardUpdatedNotification(ILcom/samsung/android/magazinecard/MagazineCardRecord;)V
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_42

    goto :goto_15
.end method
