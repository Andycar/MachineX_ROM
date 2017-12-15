.class Landroid/speech/tts/TextToSpeech$18;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Landroid/speech/tts/Voice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 2

    .prologue
    .line 1755
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$18;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .registers 15
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 1759
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1761
    .local v1, "defaultLanguage":[Ljava/lang/String;
    if-eqz v1, :cond_c

    array-length v10, v1

    if-nez v10, :cond_16

    .line 1762
    :cond_c
    const-string v10, "TextToSpeech"

    const-string/jumbo v11, "service.getClientDefaultLanguage() returned empty array"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 1799
    :goto_15
    return-object v6

    .line 1765
    :cond_16
    const/4 v10, 0x0

    aget-object v3, v1, v10

    .line 1766
    .local v3, "language":Ljava/lang/String;
    array-length v10, v1

    if-le v10, v11, :cond_3d

    aget-object v0, v1, v11

    .line 1767
    .local v0, "country":Ljava/lang/String;
    :goto_1e
    array-length v10, v1

    if-le v10, v12, :cond_40

    aget-object v5, v1, v12

    .line 1770
    .local v5, "variant":Ljava/lang/String;
    :goto_23
    invoke-interface {p1, v3, v0, v5}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1771
    .local v4, "result":I
    if-ltz v4, :cond_43

    .line 1772
    if-ge v4, v12, :cond_31

    .line 1773
    const-string v5, ""

    .line 1774
    if-ge v4, v11, :cond_31

    .line 1775
    const-string v0, ""

    .line 1784
    :cond_31
    invoke-interface {p1, v3, v0, v5}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1785
    .local v7, "voiceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_45

    move-object v6, v9

    .line 1786
    goto :goto_15

    .line 1766
    .end local v0    # "country":Ljava/lang/String;
    .end local v4    # "result":I
    .end local v5    # "variant":Ljava/lang/String;
    .end local v7    # "voiceName":Ljava/lang/String;
    :cond_3d
    const-string v0, ""

    goto :goto_1e

    .line 1767
    .restart local v0    # "country":Ljava/lang/String;
    :cond_40
    const-string v5, ""

    goto :goto_23

    .restart local v4    # "result":I
    .restart local v5    # "variant":Ljava/lang/String;
    :cond_43
    move-object v6, v9

    .line 1780
    goto :goto_15

    .line 1790
    .restart local v7    # "voiceName":Ljava/lang/String;
    :cond_45
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v8

    .line 1791
    .local v8, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v8, :cond_4d

    move-object v6, v9

    .line 1792
    goto :goto_15

    .line 1794
    :cond_4d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/speech/tts/Voice;

    .line 1795
    .local v6, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    goto :goto_15

    .end local v6    # "voice":Landroid/speech/tts/Voice;
    :cond_68
    move-object v6, v9

    .line 1799
    goto :goto_15
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1755
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$18;->run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    move-result-object v0

    return-object v0
.end method
