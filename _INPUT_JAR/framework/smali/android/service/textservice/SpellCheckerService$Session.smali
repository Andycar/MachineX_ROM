.class public abstract Landroid/service/textservice/SpellCheckerService$Session;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

.field private volatile mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 210
    return-void
.end method

.method public onClose()V
    .registers 1

    .prologue
    .line 218
    return-void
.end method

.method public abstract onCreate()V
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .registers 14
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 165
    if-eqz p1, :cond_5

    array-length v9, p1

    if-nez v9, :cond_8

    .line 166
    :cond_5
    sget-object v6, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 201
    :cond_7
    :goto_7
    return-object v6

    .line 172
    :cond_8
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v9, :cond_28

    .line 173
    monitor-enter p0

    .line 174
    :try_start_d
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v9, :cond_27

    .line 175
    invoke-virtual {p0}, Landroid/service/textservice/SpellCheckerService$Session;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "localeStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 177
    new-instance v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;-><init>(Ljava/util/Locale;)V

    iput-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    .line 180
    .end local v4    # "localeStr":Ljava/lang/String;
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2f

    .line 182
    :cond_28
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v9, :cond_32

    .line 183
    sget-object v6, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    goto :goto_7

    .line 180
    :catchall_2f
    move-exception v9

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v9

    .line 185
    :cond_32
    array-length v1, p1

    .line 186
    .local v1, "infosSize":I
    new-array v6, v1, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 187
    .local v6, "retval":[Landroid/view/textservice/SentenceSuggestionsInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    if-ge v0, v1, :cond_7

    .line 188
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    aget-object v10, p1, v0

    # invokes: Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    invoke-static {v9, v10}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v8

    .line 190
    .local v8, "textInfoParams":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    iget-object v5, v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    .line 192
    .local v5, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 193
    .local v2, "itemsSize":I
    new-array v7, v2, [Landroid/view/textservice/TextInfo;

    .line 194
    .local v7, "splitTextInfos":[Landroid/view/textservice/TextInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_49
    if-ge v3, v2, :cond_58

    .line 195
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    iget-object v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    aput-object v9, v7, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 197
    :cond_58
    const/4 v9, 0x1

    invoke-virtual {p0, v7, p2, v9}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v9

    aput-object v9, v6, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_36
.end method

.method public abstract onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .registers 10
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .prologue
    .line 139
    array-length v1, p1

    .line 140
    .local v1, "length":I
    new-array v2, v1, [Landroid/view/textservice/SuggestionsInfo;

    .line 141
    .local v2, "retval":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_22

    .line 142
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v3

    aput-object v3, v2, v0

    .line 143
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 146
    :cond_22
    return-object v2
.end method

.method public final setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V
    .registers 2
    .param p1, "session"    # Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .line 107
    return-void
.end method
