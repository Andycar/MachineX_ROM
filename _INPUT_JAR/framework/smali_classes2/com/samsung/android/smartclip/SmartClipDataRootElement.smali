.class Lcom/samsung/android/smartclip/SmartClipDataRootElement;
.super Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
.source "SmartClipDataRepositoryImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public collectPlainTextTag()Ljava/lang/String;
    .registers 12

    .prologue
    .line 865
    move-object v2, p0

    .line 866
    .local v2, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 867
    .local v6, "resultString":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 869
    .local v5, "prevTextTagRect":Landroid/graphics/Rect;
    :goto_b
    if-eqz v2, :cond_96

    .line 870
    const-string v4, ""

    .line 871
    .local v4, "plainText":Ljava/lang/String;
    const-string/jumbo v9, "plain_text"

    invoke-virtual {v2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v8

    .line 872
    .local v8, "textTags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    invoke-virtual {v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v7

    .line 873
    .local v7, "textTagCount":I
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 875
    .local v1, "curTextTagRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v7, :cond_4d

    .line 876
    invoke-virtual {v8, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "curTagValue":Ljava/lang/String;
    if-eqz v0, :cond_4a

    .line 879
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4a

    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 875
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 885
    .end local v0    # "curTagValue":Ljava/lang/String;
    :cond_4d
    if-eqz v4, :cond_90

    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-lez v9, :cond_90

    .line 886
    if-eqz v1, :cond_76

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v10, :cond_76

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 887
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 890
    :cond_76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 892
    if-eqz v1, :cond_90

    .line 893
    move-object v5, v1

    .line 897
    :cond_90
    invoke-virtual {v2, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    .line 898
    goto/16 :goto_b

    .line 900
    .end local v1    # "curTextTagRect":Landroid/graphics/Rect;
    .end local v3    # "i":I
    .end local v4    # "plainText":Ljava/lang/String;
    .end local v7    # "textTagCount":I
    .end local v8    # "textTags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    :cond_96
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 901
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a2

    .line 902
    const/4 v6, 0x0

    .line 904
    .end local v6    # "resultString":Ljava/lang/String;
    :cond_a2
    return-object v6
.end method
