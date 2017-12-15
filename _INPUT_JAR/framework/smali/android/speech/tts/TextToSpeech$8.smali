.class Landroid/speech/tts/TextToSpeech$8;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .registers 3

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$8;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$8;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;
    .registers 8
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/speech/tts/ITextToSpeechService;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1363
    const/4 v2, 0x0

    .line 1365
    .local v2, "features":[Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$8;->val$locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$8;->val$locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Landroid/speech/tts/ITextToSpeechService;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_17} :catch_23

    move-result-object v2

    .line 1373
    if-eqz v2, :cond_22

    .line 1374
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1375
    .local v1, "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1378
    .end local v1    # "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_22
    :goto_22
    return-object v1

    .line 1367
    :catch_23
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/util/MissingResourceException;
    const-string v3, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve 3 letter ISO 639-2/T language and/or ISO 3166 country code for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$8;->val$locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
