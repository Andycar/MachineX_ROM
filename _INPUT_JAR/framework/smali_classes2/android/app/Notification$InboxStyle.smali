.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 4281
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4279
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4282
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4284
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4279
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4285
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4286
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .registers 15

    .prologue
    .line 4340
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 4341
    .local v6, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4343
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getInboxLayoutResource()I
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4345
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4347
    const v11, 0x1020015

    const/16 v12, 0x8

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4349
    const/4 v11, 0x7

    new-array v8, v11, [I

    fill-array-data v8, :array_d4

    .line 4353
    .local v8, "rowIds":[I
    move-object v0, v8

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2c
    if-ge v3, v5, :cond_38

    aget v7, v0, v3

    .line 4354
    .local v7, "rowId":I
    const/16 v11, 0x8

    invoke-virtual {v1, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4353
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 4357
    .end local v7    # "rowId":I
    :cond_38
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9b

    const/4 v4, 0x1

    .line 4359
    .local v4, "largeText":Z
    :goto_4f
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v10, v11

    .line 4361
    .local v10, "subTextSize":F
    const/4 v2, 0x0

    .line 4362
    .local v2, "i":I
    :goto_62
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_9d

    array-length v11, v8

    if-ge v2, v11, :cond_9d

    .line 4363
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 4364
    .local v9, "str":Ljava/lang/CharSequence;
    if-eqz v9, :cond_98

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_98

    .line 4365
    aget v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4366
    aget v11, v8, v2

    iget-object v12, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v12, v9}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4367
    if-eqz v4, :cond_98

    .line 4368
    aget v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 4372
    :cond_98
    add-int/lit8 v2, v2, 0x1

    .line 4373
    goto :goto_62

    .line 4357
    .end local v2    # "i":I
    .end local v4    # "largeText":Z
    .end local v9    # "str":Ljava/lang/CharSequence;
    .end local v10    # "subTextSize":F
    :cond_9b
    const/4 v4, 0x0

    goto :goto_4f

    .line 4375
    .restart local v2    # "i":I
    .restart local v4    # "largeText":Z
    .restart local v10    # "subTextSize":F
    :cond_9d
    const v12, 0x10203ef

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_cd

    const/4 v11, 0x0

    :goto_a9
    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4378
    const v12, 0x10203ee

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v13, v8

    if-le v11, v13, :cond_d0

    const/4 v11, 0x0

    :goto_b9
    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4381
    invoke-virtual {p0, v1}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4383
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v11, v1}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 4385
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v12, 0x10203e2

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v11, v1, v12}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4387
    return-object v1

    .line 4375
    :cond_cd
    const/16 v11, 0x8

    goto :goto_a9

    .line 4378
    :cond_d0
    const/16 v11, 0x8

    goto :goto_b9

    .line 4349
    nop

    :array_d4
    .array-data 4
        0x10203e7
        0x10203e8
        0x10203e9
        0x10203ea
        0x10203eb
        0x10203ec
        0x10203ed
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4317
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4319
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 4320
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4321
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4309
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4310
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .registers 4
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4395
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4396
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4328
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4330
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4331
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4332
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4334
    :cond_1b
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4293
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4294
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4301
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4302
    return-object p0
.end method
