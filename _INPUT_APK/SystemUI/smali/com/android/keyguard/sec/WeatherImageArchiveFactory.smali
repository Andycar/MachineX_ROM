.class Lcom/android/keyguard/sec/WeatherImageArchiveFactory;
.super Ljava/lang/Object;
.source "WeatherImageArchiveFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    .locals 1
    .param p0, "CPName"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string v0, "Cmaweather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/keyguard/sec/CmaWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/CmaWeatherImageArchive;-><init>()V

    .line 16
    :goto_0
    return-object v0

    .line 11
    :cond_0
    const-string v0, "kweather"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Lcom/android/keyguard/sec/AccuWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/AccuWeatherImageArchive;-><init>()V

    goto :goto_0

    .line 13
    :cond_1
    const-string v0, "weathernewsjp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lcom/android/keyguard/sec/JPWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;-><init>()V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/AccuWeatherImageArchive;

    invoke-direct {v0}, Lcom/android/keyguard/sec/AccuWeatherImageArchive;-><init>()V

    goto :goto_0
.end method
