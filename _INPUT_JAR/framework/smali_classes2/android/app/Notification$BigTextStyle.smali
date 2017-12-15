.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x3

.field private static final LINES_CONSUMED_BY_SUMMARY:I = 0x2

.field private static final MAX_LINES:I = 0xc


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4155
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4156
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .registers 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4158
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4159
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4160
    return-void
.end method

.method private calculateMaxLines()I
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4232
    const/16 v2, 0xc

    .line 4233
    .local v2, "lineCount":I
    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2d

    move v0, v3

    .line 4234
    .local v0, "hasActions":Z
    :goto_11
    iget-boolean v5, p0, Landroid/app/Notification$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v5, :cond_2f

    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    :goto_17
    if-eqz v5, :cond_36

    move v1, v3

    .line 4235
    .local v1, "hasSummary":Z
    :goto_1a
    if-eqz v0, :cond_1e

    .line 4236
    add-int/lit8 v2, v2, -0x3

    .line 4238
    :cond_1e
    if-eqz v1, :cond_22

    .line 4239
    add-int/lit8 v2, v2, -0x2

    .line 4243
    :cond_22
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mHasThreeLines:Z
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$1200(Landroid/app/Notification$Builder;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 4244
    add-int/lit8 v2, v2, -0x1

    .line 4246
    :cond_2c
    return v2

    .end local v0    # "hasActions":Z
    .end local v1    # "hasSummary":Z
    :cond_2d
    move v0, v4

    .line 4233
    goto :goto_11

    .line 4234
    .restart local v0    # "hasActions":Z
    :cond_2f
    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/app/Notification$Builder;->access$900(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_17

    :cond_36
    move v1, v4

    goto :goto_1a
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .registers 6

    .prologue
    const v4, 0x10203e1

    .line 4210
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4211
    .local v1, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4213
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getBigTextLayoutResource()I
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1700(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4215
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4217
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4218
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4219
    const-string/jumbo v2, "setMaxLines"

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines()I

    move-result v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4220
    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4222
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4224
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 4226
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v3, 0x10203e2

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v2, v0, v3}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4228
    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4192
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4194
    const-string v0, "android.bigText"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4195
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4184
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4185
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .registers 4
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4254
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4255
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4202
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4204
    const-string v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4205
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4167
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4168
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4175
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4176
    return-object p0
.end method
