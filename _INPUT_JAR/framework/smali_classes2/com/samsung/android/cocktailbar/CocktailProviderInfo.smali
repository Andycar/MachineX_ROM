.class public Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
.super Ljava/lang/Object;
.source "CocktailProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COCKTAIL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x2

.field public static final COCKTAIL_CATEGORY_EXPRESS_ME:I = 0x40

.field public static final COCKTAIL_CATEGORY_FEEDS:I = 0x100

.field public static final COCKTAIL_CATEGORY_HOME_SCREEN:I = 0x8

.field public static final COCKTAIL_CATEGORY_LOCK_SCREEN:I = 0x10

.field public static final COCKTAIL_CATEGORY_NIGHT_MODE:I = 0x80

.field public static final COCKTAIL_CATEGORY_NORMAL:I = 0x1

.field public static final COCKTAIL_CATEGORY_QUICK_TOOL:I = 0x4

.field public static final COCKTAIL_CATEGORY_TABLE_MODE:I = 0x20

.field private static final COCKTAIL_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final COCKTAIL_CSC_PREVIEW_IMAGE:Ljava/lang/String; = "cscPreviewImage"

.field private static final COCKTAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COCKTAIL_ICON:Ljava/lang/String; = "icon"

.field private static final COCKTAIL_LABEL:Ljava/lang/String; = "label"

.field private static final COCKTAIL_PERMIT_VISIBILITY_CHANGED:Ljava/lang/String; = "permitVisibilityChanged"

.field private static final COCKTAIL_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field private static final COCKTAIL_PRIVATE_MODE:Ljava/lang/String; = "privateMode"

.field private static final COCKTAIL_UPDATE_TIME:Ljava/lang/String; = "updatePeriodMillis"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CocktailProviderInfo"

.field private static final XMLVAL_CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final XMLVAL_EXPRESS_ME:Ljava/lang/String; = "expressme"

.field private static final XMLVAL_FEEDS:Ljava/lang/String; = "feeds"

.field private static final XMLVAL_HOME_SCREEN:Ljava/lang/String; = "homescreen"

.field private static final XMLVAL_LOCK_SCREEN:Ljava/lang/String; = "lockscreen"

.field private static final XMLVAL_NIGHT_MODE:Ljava/lang/String; = "nightmode"

.field private static final XMLVAL_NORMAL:Ljava/lang/String; = "normal"

.field private static final XMLVAL_QUICK_TOOL:Ljava/lang/String; = "quicktool"

.field private static final XMLVAL_TABLE_MODE:Ljava/lang/String; = "tablemode"


# instance fields
.field public category:I

.field public configure:Landroid/content/ComponentName;

.field public cscPreviewImage:Z

.field public description:I

.field public icon:I

.field public label:I

.field public permitVisibilityChanged:Z

.field public previewImage:I

.field public privateMode:Ljava/lang/String;

.field public provider:Landroid/content/ComponentName;

.field public updatePeriodMillis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 241
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 148
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "provider"    # Landroid/content/ComponentName;
    .param p5, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p6, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 169
    iput-object p4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 170
    const/4 v4, 0x0

    const-string v5, "icon"

    const/4 v6, 0x0

    invoke-interface {p5, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 171
    const/4 v4, 0x0

    const-string v5, "label"

    const/4 v6, 0x0

    invoke-interface {p5, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 172
    const/4 v4, 0x0

    const-string v5, "description"

    const/4 v6, 0x0

    invoke-interface {p5, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 173
    const-string v4, "category"

    const-string v5, "normal"

    invoke-direct {p0, p5, p3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "category":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 175
    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 210
    :cond_37
    :goto_37
    const-string/jumbo v4, "privateMode"

    const/4 v5, 0x0

    invoke-direct {p0, p5, p3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 211
    const/4 v4, 0x0

    const-string/jumbo v5, "previewImage"

    const/4 v6, 0x0

    invoke-interface {p5, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 212
    const-string/jumbo v4, "updatePeriodMillis"

    const/4 v5, 0x0

    invoke-direct {p0, p5, p3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 213
    const-string/jumbo v4, "permitVisibilityChanged"

    const/4 v5, 0x0

    invoke-direct {p0, p5, p3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 214
    const-string v4, "configure"

    const/4 v5, 0x0

    invoke-direct {p0, p5, p3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_74

    .line 216
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 218
    :cond_74
    const-string v4, "cscPreviewImage"

    const/4 v5, 0x0

    invoke-direct {p0, p5, p3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 219
    return-void

    .line 177
    .end local v3    # "className":Ljava/lang/String;
    :cond_7e
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x7c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 178
    .local v2, "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 179
    :goto_88
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 180
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "c":Ljava/lang/String;
    const-string v4, "normal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 182
    iget v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_88

    .line 183
    :cond_a5
    const-string v4, "contextual"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 184
    iget v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_88

    .line 185
    :cond_b4
    const-string v4, "homescreen"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 186
    iget v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/lit8 v4, v4, 0x9

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_88

    .line 187
    :cond_c3
    const-string v4, "lockscreen"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 188
    iget v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/lit8 v4, v4, 0x11

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_88

    .line 189
    :cond_d2
    const-string v4, "feeds"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 190
    iget v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/lit16 v4, v4, 0x101

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_88

    .line 191
    :cond_e1
    const-string/jumbo v4, "quicktool"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 192
    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto/16 :goto_37

    .line 194
    :cond_ef
    const-string/jumbo v4, "tablemode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 195
    const/16 v4, 0x20

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto/16 :goto_37

    .line 197
    :cond_fe
    const-string v4, "nightmode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 198
    const/16 v4, 0x80

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto/16 :goto_37

    .line 200
    :cond_10c
    const-string v4, "expressme"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 201
    const/16 v4, 0x40

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto/16 :goto_37

    .line 204
    :cond_11a
    const-string v4, "CocktailProviderInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " specified an invalid catetory of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto/16 :goto_37
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean v2, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 223
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 225
    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 234
    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_63

    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 236
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 238
    :cond_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_65

    :goto_60
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 239
    return-void

    :cond_63
    move v0, v2

    .line 234
    goto :goto_4b

    :cond_65
    move v1, v2

    .line 238
    goto :goto_60
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 155
    .local v3, "pkgRes":Landroid/content/res/Resources;
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;)V
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_15} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_15} :catch_29

    .line 163
    .end local v2    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v3    # "pkgRes":Landroid/content/res/Resources;
    :goto_15
    return-object v0

    .line 156
    :catch_16
    move-exception v7

    .line 157
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "CocktailProviderInfo"

    const-string v1, "failed to load find package"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1e
    const/4 v0, 0x0

    goto :goto_15

    .line 158
    :catch_20
    move-exception v7

    .line 159
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "CocktailProviderInfo"

    const-string v1, "XML resources failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 160
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_29
    move-exception v7

    .line 161
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "CocktailProviderInfo"

    const-string v1, "IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .prologue
    const/4 v4, 0x0

    .line 329
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 330
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 332
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 339
    .local v2, "value":Z
    :goto_c
    return v2

    .line 333
    .end local v2    # "value":Z
    :catch_d
    move-exception v0

    .line 334
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 335
    .restart local v2    # "value":Z
    goto :goto_c

    .line 337
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Z
    :cond_10
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "value":Z
    goto :goto_c
.end method

.method private loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 294
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 297
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    .line 304
    .local v2, "value":I
    :goto_c
    return v2

    .line 298
    .end local v2    # "value":I
    :catch_d
    move-exception v0

    .line 299
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v2, p4

    .line 300
    .restart local v2    # "value":I
    goto :goto_c

    .line 302
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":I
    :cond_10
    invoke-interface {p1, v4, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_c
.end method

.method private loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 310
    const/4 v3, 0x0

    invoke-interface {p1, v4, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, "refId":I
    if-eqz v1, :cond_10

    .line 313
    :try_start_8
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    .line 323
    .local v2, "value":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object v2

    .line 314
    .end local v2    # "value":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 315
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v2, p4

    .line 316
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_c

    .line 318
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "value":Ljava/lang/String;
    :cond_10
    invoke-interface {p1, v4, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .restart local v2    # "value":Ljava/lang/String;
    if-nez v2, :cond_c

    .line 320
    move-object v2, p4

    goto :goto_c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_53

    .line 256
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    :goto_e
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 268
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    :goto_38
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    if-eqz v0, :cond_5b

    .line 274
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    :goto_3f
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_5f

    .line 279
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    :goto_4b
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    if-eqz v0, :cond_63

    .line 285
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    :goto_52
    return-void

    .line 259
    :cond_53
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 271
    :cond_57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 276
    :cond_5b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3f

    .line 282
    :cond_5f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4b

    .line 287
    :cond_63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_52
.end method
