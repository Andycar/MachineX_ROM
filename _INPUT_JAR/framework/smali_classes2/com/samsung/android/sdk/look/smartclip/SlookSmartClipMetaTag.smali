.class public Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
.super Ljava/lang/Object;
.source "SlookSmartClipMetaTag.java"


# static fields
.field public static final TAG_TYPE_APP_DEEP_LINK:Ljava/lang/String; = "app_deep_link"

.field public static final TAG_TYPE_PLAIN_TEXT:Ljava/lang/String; = "plain_text"

.field public static final TAG_TYPE_TITLE:Ljava/lang/String; = "title"

.field public static final TAG_TYPE_URL:Ljava/lang/String; = "url"


# instance fields
.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->mValue:Ljava/lang/String;

    .line 99
    return-void
.end method
