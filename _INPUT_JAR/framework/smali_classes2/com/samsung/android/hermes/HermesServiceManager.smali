.class public Lcom/samsung/android/hermes/HermesServiceManager;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hermes/HermesServiceManager$3;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesHoverSpannable;,
        Lcom/samsung/android/hermes/HermesServiceManager$HermesClickSpannable;,
        Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;,
        Lcom/samsung/android/hermes/HermesServiceManager$PatternType;,
        Lcom/samsung/android/hermes/HermesServiceManager$AppType;,
        Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    }
.end annotation


# static fields
.field private static final DIVIDER:Ljava/lang/String; = ","

.field private static EVENT_PERIOD:I = 0x0

.field public static final GET_LINKS:I = 0x1

.field public static final GET_TAGS:I = 0x4

.field private static final HERMES_EVENT:I = 0x1

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final JSON_CONTENTS:Ljava/lang/String; = "contents"

.field private static final JSON_EVENT:I = 0x2

.field public static final RECOMMAND_APP:I = 0x10

.field public static final RECOMMAND_CONTENTS:I = 0x8

.field private static TAG:Ljava/lang/String;

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/hermes/IKerykeion;

.field private static final urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "HermesServiceManager"

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    .line 38
    sput-object v1, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    .line 61
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->urlPattern:Ljava/util/regex/Pattern;

    .line 63
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->emailPattern:Ljava/util/regex/Pattern;

    .line 65
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/hermes/HermesServiceManager;->EVENT_PERIOD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    .line 122
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "HermesServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sput-object p1, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get the hermes service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1d
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hermes/HermesServiceManager;->extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hermes/HermesServiceManager;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->hoverFilter(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/hermes/HermesServiceManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager;->clickFilter(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hermes/HermesServiceManager;Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method private varargs analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "uniqueId"    # Ljava/lang/Object;
    .param p3, "pType"    # I
    .param p4, "source"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/hermes/HermesServiceManager;->checkParamValidation(II[Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v2

    .line 247
    .local v2, "svc":Lcom/samsung/android/hermes/IKerykeion;
    if-nez v2, :cond_11

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get the hermes service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_11
    const/4 v7, 0x0

    .line 252
    .local v7, "tempKey":Ljava/lang/String;
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4c

    move-object v0, p2

    .line 253
    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 260
    :goto_1d
    move-object v3, v7

    .line 262
    .local v3, "key":Ljava/lang/String;
    if-eqz v2, :cond_4b

    .line 264
    :try_start_20
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " key : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$1;

    move-object v1, p0

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hermes/HermesServiceManager$1;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/IKerykeion;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/hermes/IKerykeion;->setIKerykeionCallBack(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 320
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/hermes/HermesServiceManager;->makeRequestList(II[Ljava/lang/Object;)Lcom/samsung/android/hermes/KerykeionRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/hermes/IKerykeion;->start(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionRequest;Lcom/samsung/android/hermes/KerykeionPosition;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_4b} :catch_59

    .line 325
    :cond_4b
    :goto_4b
    return-void

    .line 254
    .end local v3    # "key":Ljava/lang/String;
    :cond_4c
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_54

    move-object v7, p2

    .line 255
    check-cast v7, Ljava/lang/String;

    goto :goto_1d

    .line 257
    :cond_54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1d

    .line 321
    .restart local v3    # "key":Ljava/lang/String;
    :catch_59
    move-exception v6

    .line 322
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4b
.end method

.method private varargs checkParamValidation(II[Ljava/lang/Object;)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "pType"    # I
    .param p3, "source"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v4, 0x1

    if-eq v4, p1, :cond_12

    const/16 v4, 0x8

    if-eq v4, p1, :cond_12

    const/16 v4, 0x9

    if-eq v4, p1, :cond_12

    const/4 v4, 0x4

    if-eq v4, p1, :cond_12

    const/16 v4, 0x10

    if-ne v4, p1, :cond_33

    .line 734
    :cond_12
    sget-object v4, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "available request type"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    and-int/lit8 v4, p2, 0x1f

    if-eqz v4, :cond_3b

    .line 740
    sget-object v4, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "available request pattern type"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz p3, :cond_2b

    if-eqz p3, :cond_43

    array-length v4, p3

    if-gtz v4, :cond_43

    .line 746
    :cond_2b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request source is empty."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 736
    :cond_33
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request Type is not available."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request Pattern Type is not available."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_43
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_46
    if-ge v1, v2, :cond_68

    aget-object v3, v0, v1

    .line 749
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_56

    instance-of v4, v3, Landroid/net/Uri;

    if-nez v4, :cond_56

    instance-of v4, v3, Lcom/samsung/android/hermes/object/HermesObject;

    if-eqz v4, :cond_60

    .line 750
    :cond_56
    sget-object v4, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "available sources"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 752
    :cond_60
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Request source is not available."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 756
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_68
    return-void
.end method

.method private clickFilter(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 431
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v1

    aget-object v0, v1, p1

    .line 433
    .local v0, "dataType":Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 436
    :cond_26
    const/4 v1, 0x1

    .line 438
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 759
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 760
    .local v0, "app":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 762
    .local v1, "dataArray":Lorg/json/JSONArray;
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/hermes/HermesServiceManager;->createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 763
    .local v2, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 766
    :try_start_11
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_14} :catch_15

    .line 772
    .end local v0    # "app":Lorg/json/JSONObject;
    :goto_14
    return-object v0

    .line 767
    .restart local v0    # "app":Lorg/json/JSONObject;
    :catch_15
    move-exception v3

    .line 768
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 769
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 776
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 779
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " JSON DATA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 785
    :goto_2a
    return-object v0

    .line 781
    :catch_2b
    move-exception v1

    .line 782
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2a
.end method

.method private extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 28
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "returnType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/hermes/KerykeionResult;>;"
    const-wide/16 v4, 0x0

    .line 444
    .local v4, "startTime":J
    const-wide/16 v6, 0x0

    .line 445
    .local v6, "endTime":J
    const/4 v14, 0x0

    .line 446
    .local v14, "date":Ljava/lang/String;
    const/4 v8, 0x0

    .line 447
    .local v8, "location":Ljava/lang/String;
    const/4 v11, 0x0

    .line 449
    .local v11, "curlocationAccuracy":F
    const/16 v16, 0x0

    .line 450
    .local v16, "hasDate":Z
    const/16 v17, 0x0

    .line 451
    .local v17, "hasEvent":Z
    const/16 v18, 0x0

    .line 453
    .local v18, "hasLocation":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/hermes/KerykeionResult;

    .line 454
    .local v20, "kR":Lcom/samsung/android/hermes/KerykeionResult;
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v3

    aget-object v13, v2, v3

    .line 456
    .local v13, "dataType":Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    if-nez v16, :cond_7c

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 457
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_7a

    .line 458
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "date":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 459
    .restart local v14    # "date":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 460
    .local v21, "time":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7a

    .line 461
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 462
    const/4 v2, 0x1

    aget-object v2, v21, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 464
    cmp-long v2, v4, v6

    if-nez v2, :cond_7a

    .line 465
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "Set event period."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/samsung/android/hermes/HermesServiceManager;->EVENT_PERIOD:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 470
    .end local v21    # "time":[Ljava/lang/String;
    :cond_7a
    const/16 v16, 0x1

    .line 472
    :cond_7c
    if-nez v18, :cond_86

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    :cond_86
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 475
    :cond_8e
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAccuracy()F

    move-result v2

    cmpg-float v2, v11, v2

    if-gez v2, :cond_a0

    .line 476
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAccuracy()F

    move-result v11

    .line 477
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "location":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 479
    .restart local v8    # "location":Ljava/lang/String;
    :cond_a0
    const/16 v18, 0x1

    .line 481
    :cond_a2
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2, v13}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 482
    const/16 v17, 0x1

    goto/16 :goto_11

    .line 486
    .end local v13    # "dataType":Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    .end local v20    # "kR":Lcom/samsung/android/hermes/KerykeionResult;
    :cond_ae
    if-eqz v16, :cond_b2

    if-nez v18, :cond_b6

    :cond_b2
    if-nez v16, :cond_b6

    if-eqz v17, :cond_10a

    .line 487
    :cond_b6
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_c5

    .line 488
    new-instance v2, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;JJLjava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_c4
    return-object v2

    .line 489
    :cond_c5
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_108

    .line 490
    if-nez v14, :cond_ce

    .line 491
    const/4 v2, 0x0

    goto :goto_c4

    .line 493
    :cond_ce
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 494
    .local v10, "app":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 496
    .local v12, "dataArray":Lorg/json/JSONArray;
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/samsung/android/hermes/HermesServiceManager;->createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 498
    if-eqz v8, :cond_f8

    .line 499
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/samsung/android/hermes/HermesServiceManager;->createDataObject(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 503
    :cond_f8
    :try_start_f8
    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    invoke-virtual {v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_101
    .catch Lorg/json/JSONException; {:try_start_f8 .. :try_end_101} :catch_103

    :goto_101
    move-object v2, v10

    .line 508
    goto :goto_c4

    .line 504
    :catch_103
    move-exception v15

    .line 505
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_101

    .line 510
    .end local v10    # "app":Lorg/json/JSONObject;
    .end local v12    # "dataArray":Lorg/json/JSONArray;
    .end local v15    # "e":Lorg/json/JSONException;
    :cond_108
    const/4 v2, 0x0

    goto :goto_c4

    .line 513
    :cond_10a
    const/4 v2, 0x0

    goto :goto_c4
.end method

.method private getAppType(Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;)Lcom/samsung/android/hermes/HermesServiceManager$AppType;
    .registers 4
    .param p1, "rType"    # Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    .prologue
    .line 842
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$3;->$SwitchMap$com$samsung$android$hermes$HermesServiceManager$AnalyzerResultType:[I

    invoke-virtual {p1}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 867
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 846
    :pswitch_d
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->contact:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 851
    :pswitch_10
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->pim:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 853
    :pswitch_13
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->email:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 855
    :pswitch_16
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->browser:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 858
    :pswitch_19
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->map:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 860
    :pswitch_1c
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->news:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 862
    :pswitch_1f
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->recommand_text:Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    goto :goto_c

    .line 842
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method private static getLinkifyToPatternType(I)I
    .registers 4
    .param p0, "linkify"    # I

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 682
    .local v0, "pattern":I
    if-nez p0, :cond_6

    .line 683
    const/16 v1, 0x1d

    .line 703
    :goto_5
    return v1

    .line 686
    :cond_6
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0xf

    if-ne v1, v2, :cond_f

    .line 687
    const/16 v1, 0x1e

    goto :goto_5

    .line 690
    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_15

    .line 691
    or-int/lit8 v0, v0, 0x2

    .line 693
    :cond_15
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1b

    .line 694
    or-int/lit8 v0, v0, 0x4

    .line 696
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_21

    .line 697
    or-int/lit8 v0, v0, 0x8

    .line 699
    :cond_21
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_27

    .line 700
    or-int/lit8 v0, v0, 0x2

    :cond_27
    move v1, v0

    .line 703
    goto :goto_5
.end method

.method private static getPatternTpAnalyzerResultType(I)Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    .registers 2
    .param p0, "pType"    # I

    .prologue
    .line 707
    sparse-switch p0, :sswitch_data_16

    .line 725
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    :goto_5
    return-object v0

    .line 709
    :sswitch_6
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Date:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_5

    .line 712
    :sswitch_9
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Email:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_5

    .line 715
    :sswitch_c
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_5

    .line 718
    :sswitch_f
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Telnum:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_5

    .line 721
    :sswitch_12
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    goto :goto_5

    .line 707
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_12
        0x8 -> :sswitch_f
        0x10 -> :sswitch_c
    .end sparse-switch
.end method

.method private declared-synchronized getService()Lcom/samsung/android/hermes/IKerykeion;
    .registers 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    if-nez v0, :cond_1f

    .line 142
    const-string v0, "hermesservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    .line 144
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    if-nez v0, :cond_37

    .line 145
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_5c

    .line 146
    const/4 v0, 0x0

    .line 157
    :goto_1d
    monitor-exit p0

    return-object v0

    .line 149
    :cond_1f
    :try_start_1f
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    invoke-interface {v0}, Lcom/samsung/android/hermes/IKerykeion;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_37

    .line 150
    const-string v0, "hermesservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    .line 154
    :cond_37
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    if-eqz v0, :cond_59

    .line 155
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_59
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mService:Lcom/samsung/android/hermes/IKerykeion;
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_5c

    goto :goto_1d

    .line 141
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hoverFilter(II)Z
    .registers 6
    .param p1, "analyzerType"    # I
    .param p2, "patternType"    # I

    .prologue
    .line 415
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v1

    aget-object v0, v1, p1

    .line 417
    .local v0, "dataType":Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Place:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Poi:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Hotkeyword:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Unknown:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-static {p2}, Lcom/samsung/android/hermes/HermesServiceManager;->getPatternTpAnalyzerResultType(I)Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 424
    :cond_42
    const/4 v1, 0x1

    .line 426
    :goto_43
    return v1

    :cond_44
    const/4 v1, 0x0

    goto :goto_43
.end method

.method private makeJson(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hermes/KerykeionResult;>;"
    const/4 v11, 0x0

    .line 790
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 791
    .local v3, "contents":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 793
    .local v1, "appArray":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/hermes/KerykeionResult;

    .line 794
    .local v9, "result":Lcom/samsung/android/hermes/KerykeionResult;
    invoke-static {}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->values()[Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getResultType()I

    move-result v12

    aget-object v5, v10, v12

    .line 795
    .local v5, "dataType":Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    invoke-direct {p0, v5}, Lcom/samsung/android/hermes/HermesServiceManager;->getAppType(Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;)Lcom/samsung/android/hermes/HermesServiceManager$AppType;

    move-result-object v2

    .line 797
    .local v2, "appType":Lcom/samsung/android/hermes/HermesServiceManager$AppType;
    if-eqz v2, :cond_f

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->isPossibleToShow()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 801
    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Event_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v5, v10}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_41

    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Contact_id:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v5, v10}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_81

    .line 803
    :cond_41
    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/util/List;

    if-eqz v10, :cond_6d

    .line 804
    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 805
    .local v4, "data":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v10, v12, v4}, Lcom/samsung/android/hermes/HermesServiceManager;->createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 807
    .local v0, "app":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_53

    .line 810
    .end local v0    # "app":Lorg/json/JSONObject;
    .end local v4    # "data":Ljava/lang/Object;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6d
    invoke-virtual {v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {p0, v10, v12, v13}, Lcom/samsung/android/hermes/HermesServiceManager;->createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 812
    .restart local v0    # "app":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    .line 815
    .end local v0    # "app":Lorg/json/JSONObject;
    :cond_81
    invoke-virtual {v2}, Lcom/samsung/android/hermes/HermesServiceManager$AppType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/samsung/android/hermes/KerykeionResult;->getAdaptableData()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {p0, v10, v12, v13}, Lcom/samsung/android/hermes/HermesServiceManager;->createAppObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 817
    .restart local v0    # "app":Lorg/json/JSONObject;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_f

    .line 821
    .end local v0    # "app":Lorg/json/JSONObject;
    .end local v2    # "appType":Lcom/samsung/android/hermes/HermesServiceManager$AppType;
    .end local v5    # "dataType":Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;
    .end local v9    # "result":Lcom/samsung/android/hermes/KerykeionResult;
    :cond_96
    const/4 v10, 0x2

    invoke-direct {p0, p1, v11, v10}, Lcom/samsung/android/hermes/HermesServiceManager;->extractEvent(Ljava/util/List;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 822
    .restart local v0    # "app":Lorg/json/JSONObject;
    if-eqz v0, :cond_a2

    .line 823
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 826
    :cond_a2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-gtz v10, :cond_b1

    .line 827
    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v12, "App array length is zero"

    invoke-static {v10, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 838
    :goto_b0
    return-object v10

    .line 832
    :cond_b1
    :try_start_b1
    const-string v10, "contents"

    invoke-virtual {v3, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_b6} :catch_d7

    .line 837
    :goto_b6
    sget-object v10, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " JSON DATA : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_b0

    .line 833
    :catch_d7
    move-exception v6

    .line 834
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b6
.end method

.method private varargs makeRequestList(II[Ljava/lang/Object;)Lcom/samsung/android/hermes/KerykeionRequest;
    .registers 12
    .param p1, "type"    # I
    .param p2, "nPatternType"    # I
    .param p3, "source"    # [Ljava/lang/Object;

    .prologue
    .line 518
    new-instance v3, Lcom/samsung/android/hermes/KerykeionRequest;

    invoke-direct {v3}, Lcom/samsung/android/hermes/KerykeionRequest;-><init>()V

    .line 519
    .local v3, "kRequest":Lcom/samsung/android/hermes/KerykeionRequest;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v6, "objList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Lcom/samsung/android/hermes/object/HermesObject;

    invoke-direct {v1}, Lcom/samsung/android/hermes/object/HermesObject;-><init>()V

    .line 522
    .local v1, "hObj":Lcom/samsung/android/hermes/object/HermesObject;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v4, :cond_2c

    aget-object v5, v0, v2

    .line 523
    .local v5, "obj":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_1e

    instance-of v7, v5, Landroid/net/Uri;

    if-eqz v7, :cond_24

    .line 524
    :cond_1e
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 525
    :cond_24
    instance-of v7, v5, Lcom/samsung/android/hermes/object/HermesObject;

    if-eqz v7, :cond_21

    .line 526
    invoke-virtual {v1, v5}, Lcom/samsung/android/hermes/object/HermesObject;->setObject(Ljava/lang/Object;)V

    goto :goto_21

    .line 529
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_2c
    invoke-virtual {v3, p1, v6, p2, v1}, Lcom/samsung/android/hermes/KerykeionRequest;->setRequestData(ILjava/util/List;ILcom/samsung/android/hermes/object/HermesObject;)V

    .line 530
    return-object v3
.end method

.method private startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 658
    if-nez p1, :cond_3

    .line 677
    :cond_2
    :goto_2
    return-void

    .line 662
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v2

    .line 664
    .local v2, "svc":Lcom/samsung/android/hermes/IKerykeion;
    if-nez v2, :cond_11

    .line 665
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not get the hermes service."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :cond_11
    if-eqz v2, :cond_2

    .line 669
    new-instance v1, Lcom/samsung/android/hermes/KerykeionPosition;

    invoke-direct {v1, p2}, Lcom/samsung/android/hermes/KerykeionPosition;-><init>(Landroid/graphics/Rect;)V

    .line 672
    .local v1, "position":Lcom/samsung/android/hermes/KerykeionPosition;
    :try_start_18
    invoke-interface {v2, p1, v1}, Lcom/samsung/android/hermes/IKerykeion;->show(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionPosition;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_2

    .line 673
    :catch_1c
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public analysis(ILjava/lang/Object;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public analysis(ILjava/lang/Object;I)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "uniqueId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public analysis(ILjava/lang/Object;II)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "uniqueId"    # I
    .param p4, "PatternType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public analysis(ILjava/lang/String;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "uniqueId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    if-nez p4, :cond_1f

    sget-object v1, Lcom/samsung/android/hermes/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    const/16 v2, 0x1d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/hermes/HermesServiceManager;->analysis(ILjava/lang/Object;I[Ljava/lang/Object;)V

    .line 213
    return-void

    .line 211
    :cond_1f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_13
.end method

.method public dismissHermes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v1

    .line 616
    .local v1, "svc":Lcom/samsung/android/hermes/IKerykeion;
    if-nez v1, :cond_e

    .line 617
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not get the hermes service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_e
    if-eqz v1, :cond_13

    .line 622
    :try_start_10
    invoke-interface {v1}, Lcom/samsung/android/hermes/IKerykeion;->dismiss()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 627
    :cond_13
    :goto_13
    return-void

    .line 623
    :catch_14
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13
.end method

.method public getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "viewId"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hermes/HermesServiceManager;->getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;I)V

    .line 331
    return-void
.end method

.method public getSpannableString(ILjava/lang/String;ILandroid/graphics/Rect;I)V
    .registers 17
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "viewId"    # I
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "nAutoLinkMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "analysis"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/hermes/HermesServiceManager;->getLinkifyToPatternType(I)I

    move-result v9

    .line 340
    .local v9, "nPatterType":I
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v9, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->checkParamValidation(II[Ljava/lang/Object;)V

    .line 342
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v2

    .line 345
    .local v2, "svc":Lcom/samsung/android/hermes/IKerykeion;
    if-nez v2, :cond_26

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not get the hermes service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_26
    if-eqz v2, :cond_60

    .line 351
    :try_start_28
    sget-object v0, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " View Id : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager$2;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move/from16 v6, p5

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/hermes/HermesServiceManager$2;-><init>(Lcom/samsung/android/hermes/HermesServiceManager;Lcom/samsung/android/hermes/IKerykeion;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/hermes/IKerykeion;->setIKerykeionCallBack(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 406
    new-instance v10, Lcom/samsung/android/hermes/KerykeionPosition;

    invoke-direct {v10, p4}, Lcom/samsung/android/hermes/KerykeionPosition;-><init>(Landroid/graphics/Rect;)V

    .line 407
    .local v10, "position":Lcom/samsung/android/hermes/KerykeionPosition;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v9, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->makeRequestList(II[Ljava/lang/Object;)Lcom/samsung/android/hermes/KerykeionRequest;

    move-result-object v0

    invoke-interface {v2, v3, v0, v10}, Lcom/samsung/android/hermes/IKerykeion;->start(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionRequest;Lcom/samsung/android/hermes/KerykeionPosition;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_60} :catch_61

    .line 412
    .end local v10    # "position":Lcom/samsung/android/hermes/KerykeionPosition;
    :cond_60
    :goto_60
    return-void

    .line 408
    :catch_61
    move-exception v8

    .line 409
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_60
.end method

.method public setHermesCallBack(Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;)V
    .registers 2
    .param p1, "i"    # Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager;->mIHermesCallBack:Lcom/samsung/android/hermes/HermesServiceManager$IHermesCallBack;

    .line 138
    return-void
.end method

.method public showHermes(Lcom/samsung/android/hermes/KerykeionResult;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "kResult"    # Lcom/samsung/android/hermes/KerykeionResult;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 584
    if-eqz p1, :cond_19

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 590
    return-void

    .line 588
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "kResult is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showHermes(Ljava/lang/String;Landroid/graphics/Rect;I)V
    .registers 19
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 542
    if-nez p1, :cond_a

    .line 543
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is wrong."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 545
    :cond_a
    const/4 v12, 0x0

    .line 546
    .local v12, "hasHoverData":Z
    const/4 v2, 0x0

    .line 548
    .local v2, "nType":I
    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager;->emailPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 549
    .local v11, "emailMatcher":Ljava/util/regex/Matcher;
    :cond_14
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 550
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 551
    .local v13, "temp":Ljava/lang/String;
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    .line 574
    .end local v13    # "temp":Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 556
    :cond_28
    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager;->urlPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 557
    .local v14, "urlMatcher":Ljava/util/regex/Matcher;
    :goto_30
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 558
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 559
    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->Url:Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;

    invoke-virtual {v3}, Lcom/samsung/android/hermes/HermesServiceManager$AnalyzerResultType;->ordinal()I

    move-result v2

    .line 560
    const/4 v12, 0x1

    goto :goto_30

    .line 563
    :cond_43
    if-eqz v12, :cond_71

    .line 564
    new-instance v1, Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/hermes/KerykeionResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V

    .line 566
    .local v1, "kResult":Lcom/samsung/android/hermes/KerykeionResult;
    if-eqz v1, :cond_27

    .line 567
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/samsung/android/hermes/KerykeionResult;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    goto :goto_27

    .line 571
    .end local v1    # "kResult":Lcom/samsung/android/hermes/KerykeionResult;
    :cond_71
    sget-object v3, Lcom/samsung/android/hermes/HermesServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "fail to find adaptable parsing data"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public showHermes(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .registers 5
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hermes/KerykeionResult;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "kResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hermes/KerykeionResult;>;"
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 602
    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager;->makeJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hermes/HermesServiceManager;->startHermesTickerService(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 606
    return-void

    .line 604
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "kResultList is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public training(Ljava/lang/String;)V
    .registers 6
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 637
    if-nez p1, :cond_3

    .line 654
    :cond_2
    :goto_2
    return-void

    .line 641
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/hermes/HermesServiceManager;->getService()Lcom/samsung/android/hermes/IKerykeion;

    move-result-object v1

    .line 643
    .local v1, "svc":Lcom/samsung/android/hermes/IKerykeion;
    if-nez v1, :cond_11

    .line 644
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not get the hermes service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_11
    if-eqz v1, :cond_2

    .line 649
    :try_start_13
    invoke-interface {v1, p1}, Lcom/samsung/android/hermes/IKerykeion;->training(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_2

    .line 650
    :catch_17
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
